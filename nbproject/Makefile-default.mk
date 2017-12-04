#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=busyxlcd.c openxlcd.c putrxlcd.c putsxlcd.c pw1close.c pw1open.c pw1setdc.c pw1setoc.c readaddr.c readdata.c setcgram.c setddram.c t2close.c t2open.c t2read.c t2write.c wcmdxlcd.c writdata.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/pw1close.o ${OBJECTDIR}/pw1open.o ${OBJECTDIR}/pw1setdc.o ${OBJECTDIR}/pw1setoc.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/t2close.o ${OBJECTDIR}/t2open.o ${OBJECTDIR}/t2read.o ${OBJECTDIR}/t2write.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/writdata.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/busyxlcd.o.d ${OBJECTDIR}/openxlcd.o.d ${OBJECTDIR}/putrxlcd.o.d ${OBJECTDIR}/putsxlcd.o.d ${OBJECTDIR}/pw1close.o.d ${OBJECTDIR}/pw1open.o.d ${OBJECTDIR}/pw1setdc.o.d ${OBJECTDIR}/pw1setoc.o.d ${OBJECTDIR}/readaddr.o.d ${OBJECTDIR}/readdata.o.d ${OBJECTDIR}/setcgram.o.d ${OBJECTDIR}/setddram.o.d ${OBJECTDIR}/t2close.o.d ${OBJECTDIR}/t2open.o.d ${OBJECTDIR}/t2read.o.d ${OBJECTDIR}/t2write.o.d ${OBJECTDIR}/wcmdxlcd.o.d ${OBJECTDIR}/writdata.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/pw1close.o ${OBJECTDIR}/pw1open.o ${OBJECTDIR}/pw1setdc.o ${OBJECTDIR}/pw1setoc.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/t2close.o ${OBJECTDIR}/t2open.o ${OBJECTDIR}/t2read.o ${OBJECTDIR}/t2write.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/writdata.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=busyxlcd.c openxlcd.c putrxlcd.c putsxlcd.c pw1close.c pw1open.c pw1setdc.c pw1setoc.c readaddr.c readdata.c setcgram.c setddram.c t2close.c t2open.c t2read.c t2write.c wcmdxlcd.c writdata.c main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1close.o: pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1close.o.d 
	@${RM} ${OBJECTDIR}/pw1close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1close.o   pw1close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1close.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1open.o: pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1open.o.d 
	@${RM} ${OBJECTDIR}/pw1open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1open.o   pw1open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1open.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1setdc.o: pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setdc.o.d 
	@${RM} ${OBJECTDIR}/pw1setdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1setdc.o   pw1setdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1setdc.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1setdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1setoc.o: pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setoc.o.d 
	@${RM} ${OBJECTDIR}/pw1setoc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1setoc.o   pw1setoc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1setoc.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1setoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2close.o: t2close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2close.o.d 
	@${RM} ${OBJECTDIR}/t2close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2close.o   t2close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2close.o 
	@${FIXDEPS} "${OBJECTDIR}/t2close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2open.o: t2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2open.o.d 
	@${RM} ${OBJECTDIR}/t2open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2open.o   t2open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2open.o 
	@${FIXDEPS} "${OBJECTDIR}/t2open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2read.o: t2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2read.o.d 
	@${RM} ${OBJECTDIR}/t2read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2read.o   t2read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2read.o 
	@${FIXDEPS} "${OBJECTDIR}/t2read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2write.o: t2write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2write.o.d 
	@${RM} ${OBJECTDIR}/t2write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2write.o   t2write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2write.o 
	@${FIXDEPS} "${OBJECTDIR}/t2write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main.o   main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1close.o: pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1close.o.d 
	@${RM} ${OBJECTDIR}/pw1close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1close.o   pw1close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1close.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1open.o: pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1open.o.d 
	@${RM} ${OBJECTDIR}/pw1open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1open.o   pw1open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1open.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1setdc.o: pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setdc.o.d 
	@${RM} ${OBJECTDIR}/pw1setdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1setdc.o   pw1setdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1setdc.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1setdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/pw1setoc.o: pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pw1setoc.o.d 
	@${RM} ${OBJECTDIR}/pw1setoc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/pw1setoc.o   pw1setoc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/pw1setoc.o 
	@${FIXDEPS} "${OBJECTDIR}/pw1setoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2close.o: t2close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2close.o.d 
	@${RM} ${OBJECTDIR}/t2close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2close.o   t2close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2close.o 
	@${FIXDEPS} "${OBJECTDIR}/t2close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2open.o: t2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2open.o.d 
	@${RM} ${OBJECTDIR}/t2open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2open.o   t2open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2open.o 
	@${FIXDEPS} "${OBJECTDIR}/t2open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2read.o: t2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2read.o.d 
	@${RM} ${OBJECTDIR}/t2read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2read.o   t2read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2read.o 
	@${FIXDEPS} "${OBJECTDIR}/t2read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/t2write.o: t2write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/t2write.o.d 
	@${RM} ${OBJECTDIR}/t2write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/t2write.o   t2write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/t2write.o 
	@${FIXDEPS} "${OBJECTDIR}/t2write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main.o   main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Speaker_Temp_HR.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
