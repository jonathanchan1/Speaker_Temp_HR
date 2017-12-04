/* 
 * File:   main.c
 * Author: Chan
 *
 * Created on November 20, 2017, 8:41 PM
 */

/*_______________________________Speaker_HR_Temp________________________________*/


#include <p18f452.h>
#include "xlcd.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <delays.h>
#include <float.h>
#include "ow.h"
#include <pwm.h>
#include <timers.h>


#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

#define _XTAL_FREQ 4000000

//The note for a medical alarm is C4
#define C4 0xED         //This value was determined using a prescalar of 16 and 4MHz clock.

//Global Vars
char song[3]={C4, C4, C4}; //alarm pattern
int i;
char k[1];
unsigned char TemperatureLSB;
unsigned char TemperatureMSB;
unsigned int tempint0 =0;
unsigned int tempint1 = 0;
unsigned int tempint = 0;
float fractionFloat = 0.0000;
int fraction = 0;
int x = 0;
unsigned char aveLSB = 0;
unsigned char aveMSB = 0;
unsigned short int sum = 0;
unsigned short int temp = 0;
unsigned short int average = 0;
unsigned char degree = 0xDF;
char tempDisplay[20];
char ClrScn[20] = "                   ";
int tc = 0;
int risingEdges=0;
int bpm = 0;

/*---------------------------Speaker---------------------------*/

void spkr_setup(void){
    TRISCbits.TRISC2 = 0;
    SetDCPWM1(50);
    OpenTimer2(TIMER_INT_OFF & T2_PS_1_16 & T2_POST_1_1);
}

void sound_spkr(void){
    for (i=0; i<3; i++) {       //play x notes inside song array
      
        OpenPWM1(song[i]); 
                                //set PWM frequency according to entries in song array
        Delay10KTCYx(40);       //note is played for 400ms

        OpenPWM1(1);            //the PWM frequency set beyond audible range
                                //in order to create a short silence between notes
        Delay10KTCYx(40);       //play nothing for 400 ms                  
        }
    Delay10KTCYx(40);
}


/*---------------------------Delays---------------------------*/
void DelayFor18TCY(void)
{
    Delay1TCY();
 	Delay1TCY();
    Delay1TCY();
    Delay1TCY();
 	Delay1TCY();
    Delay1TCY();
 	Delay1TCY();
 	Delay1TCY();
 	Delay10TCYx(1);
}
 
void DelayXLCD(void)     // minimum 5ms
{
    Delay1KTCYx(5); 		// Delay of 5ms
                            // Cycles = (TimeDelay * Fosc) / 4
                            // Cycles = (5ms * 4MHz) / 4
                            // Cycles = 5,000

}

void DelayPORXLCD(void)   // minimum 15ms
{
    Delay1KTCYx(15);		// Delay of 15ms
                            // Cycles = (TimeDelay * Fosc) / 4
                            // Cycles = (15ms * 4MHz) / 4
                            // Cycles = 15,000

}

/*---------------------------LCD---------------------------*/

void LCD_setup(void){
    PORTD = 0X00;
    TRISD = 0x00;
    
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while(BusyXLCD());
    SetDDRamAddr(0x00);              //Start writing at top left hand side of screen
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while(BusyXLCD());
    WriteCmdXLCD( BLINK_ON );
    while(BusyXLCD());

 }

void clrscn(void){
    while(BusyXLCD());
    SetDDRamAddr(0x00);        //1st row
    while(BusyXLCD());
    putsXLCD(ClrScn);           //clear row

    while(BusyXLCD());
    SetDDRamAddr(0x40);        //2nd row
    while(BusyXLCD());
    putsXLCD(ClrScn);           //clear row

    while(BusyXLCD());
    SetDDRamAddr(0x10);        //3rd row
    while(BusyXLCD());
    putsXLCD(ClrScn);           //clear row

    while(BusyXLCD());
    SetDDRamAddr(0x50);        //4th row
    while(BusyXLCD());
    putsXLCD(ClrScn);          //clear row
}
       

 /*------------------------------Temp------------------------------*/

void cnvtTemp(void){
    // convert Temperature
    ow_reset();                 //send reset signal to temp sensor
    ow_write_byte(0xCC);        // address all devices w/o checking ROM id.
    ow_write_byte(0x44);        //start temperature conversion 
    PORTBbits.RB3 = 1;          //power sensor from parasitic power during conversion
    Delay10KTCYx(75);           //wait the recommended 750ms for temp conversion to complete
    PORTBbits.RB3 = 0;          // turn off parasitic power

    // read Temperature
    ow_reset();                 //send reset signal to temp sensor
    ow_write_byte(0xCC);        // address all devices w/o checking ROM id.
    ow_write_byte(0xBE);        //read scratchpad 
    TemperatureLSB = ow_read_byte();   //read byte 0 which is temperature LSB
    TemperatureMSB = ow_read_byte();   //read byte 1 which is temperature MSB
    //TemperatureLSB = 0x30;        //test values
    //TemperatureMSB = 0x02;
}

void cnvtTemp16(void){
    for (x = 1; x <= 16; x++)
        {
            cnvtTemp();
            
            temp = TemperatureMSB;
            temp = temp << 8;
            temp = temp | TemperatureLSB;
            
            sum += temp;
        }
        
        average = sum/16;
        
        
        aveLSB = average;
        aveMSB = average >> 8;
}


void interpretTemp(void){
    //Interpret temperature reading
    tempint0 = aveLSB >> 4;          //shift bits to get the integer part of the reading
    tempint1 = aveMSB << 4;
    tempint = tempint1 |tempint0;            //combine the integer vars to get true integer reading
    
    if(aveLSB & 0x01)               //mask and test bits to get fractional part of reading
        fractionFloat += 0.0625;

    if(aveLSB & 0x02)
        fractionFloat += 0.125;

    if(aveLSB & 0x04)
        fractionFloat += 0.25;

    if(aveLSB & 0x08)
        fractionFloat += 0.5;

    fraction =fractionFloat*1000;         //convert the fraction value to an int for display
}

void disp_Temp(void){
        
    while(BusyXLCD());
    SetDDRamAddr(0x00);         //Start writing at top left hand side of screen
    while(BusyXLCD());
    Delay1KTCYx(50);            //Delay prevent screen from flickering.
    while(BusyXLCD());
    putsXLCD(tempDisplay);      // Show current temperature
    while(BusyXLCD());
    sprintf(tempDisplay,"                   ");     //clear screen
        
}

/*---------------------------TMR0---------------------------*/
 
 void TMR0_setup(void){
    OpenTimer0(TIMER_INT_ON & T0_SOURCE_INT & T0_PS_1_128 & T0_16BIT );
}
 
/*---------------------------HR---------------------------*/
 
void disp_BPM(int x){
    char bpmDisplay[80];
    sprintf(bpmDisplay, "%d bpm         ",x);
    while( BusyXLCD() );
    SetDDRamAddr( 0x00 );
    putrsXLCD("Heart Rate: ");
    while( BusyXLCD() );
    SetDDRamAddr( 0x40 );
    putsXLCD(bpmDisplay);
}
 

/*------------------------------INTERRUPT---------------------------*/
void HR_ISR(void);

#pragma code high_vector = 0x08
 void high_interrupt_vector(void){
     _asm 
     GOTO HR_ISR
     _endasm
 }
#pragma code 


#pragma interrupt HR_ISR
void HR_ISR (void){
	if (INTCONbits.TMR0IF==1){      //check if TMR0 has overflowed
        INTCONbits.TMR0IE=0;        //disable interrupts
        INTCONbits.TMR0IF = 0;      //clear interrupt flag
        
        tc++;                       //increment counter
        if(tc==10)
        {// if time counter is equal to 10 (10 seconds have passed))
            tc = 0;                 // reset 1s counter
            
            bpm = risingEdges*6;   //multiply the number of rising edges by 6 for bpm
            disp_BPM(bpm);         //output bpm

            WriteTimer0(57546);         //prime timer for 1s 
           
            //reset counter for next time               
            risingEdges=0; 
        }
        else
        {// if 10s did not pass yet
            WriteTimer0(57546);         //prime TMR0 for 1s
        }
        
        INTCONbits.TMR0IE=1;
    }
    
    //beat counter
    if (INTCON3bits.INT2IF==1 ) {//if there is an interrupt at the int2 pin
        INTCONbits.TMR0IE = 0;
        INTCON3bits.INT2IE = 0 ;
        
        
        risingEdges++;              //increase rising edge counter
        INTCON3bits.INT2IF = 0;     //Clear INT2 Interrupt Flag
        
        
        INTCONbits.TMR0IE = 1;
        INTCON3bits.INT2IE = 1;
    }
    
    
} 
 
//____________________MAIN CODE_____________________//
void main (void){ 

    //Setup Interrupts
    INTCON3bits.INT2IF = 0;         //Clear INT2 Interrupt Flag
    INTCON3bits.INT2IE = 1 ;        //Enable INT2 Interrupts  
    INTCONbits.TMR0IF = 0;          //Clear TMR0 Interrupt Flag
    INTCONbits.TMR0IE = 1;          //Enable TMR0 Interrupt
    INTCON2bits.TMR0IP = 1;         //Set TMR0 as High Priority
    INTCON2bits.INTEDG0 = 1;        //Set interrupts to occur on rising edges
    INTCONbits.GIEH= 1;             //Enable Global Interrupts last to prevent unwanted interrupts. 
   
    
    
    TRISBbits.RB2 = 1;              //Set up PORT B pins
    TRISBbits.RB7 = 0;
    PORTBbits.RB7 = 0x00;
    TRISBbits.RB3=0;                //Used to power temp sensor for a reading
    
    //setup LCD and TMR0 and spkr
    TMR0_setup();
    LCD_setup();
    spkr_setup();
    
    WriteTimer0(57546);             // prime TMR0 for 1s
   
    
    while(1){
        disp_BPM(bpm);    
        
        if ((bpm<60)||(bpm>100))
            sound_spkr();
        
        cnvtTemp16();               //convert 16 temperature readings

        interpretTemp();            //convert the average temperature into a displayable format.
        
        //string to display on screen
        sprintf(tempDisplay,"Temp: +%d.%03d%cC",tempint,fraction,degree);
        disp_Temp();
        
        //reset vars for next reading
        tempint = 0;
        fraction= 0;
        fractionFloat =0.0;
        sum = 0;
        average = 0;
        //if (TempInt<25)
        //    sound_spkr();       
        
    }
}

