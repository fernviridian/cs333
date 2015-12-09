! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1356
_P_Kernel_threadManager:
	.skip	41716
_P_Kernel_frameManager:
	.skip	76
	.align
! String constants
_StringConst_125:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_124:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_107:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_104:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_103:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_102:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_100:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_99:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_98:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_91:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_90:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_89:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_88:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_87:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_86:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_85:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_84:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_83:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_82:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_81:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_80:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_78:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_77:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_76:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_73:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_72:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_66:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_63:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_62:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_59:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_58:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_57:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_56:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_55:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_53:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_51:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_49:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x716f359f,r4		! myHashVal = 1903113631
	cmp	r3,r4
	be	_Label_130
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_130:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_131
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_131
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_131
_Label_131:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_132 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	22,r13		! source line 22
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1747:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1747
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_136 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_137 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_136  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _temp_138 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_139 = _temp_138 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_139 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1748:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1748
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_141 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_143 = _function_129_IdleFunction
	set	_function_129_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_144 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_143  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	34,r13		! source line 34
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_145
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_146
	.word	-12
	.word	4
	.word	_Label_147
	.word	-16
	.word	4
	.word	_Label_148
	.word	-20
	.word	4
	.word	_Label_149
	.word	-24
	.word	4
	.word	_Label_150
	.word	-28
	.word	4
	.word	_Label_151
	.word	-32
	.word	4
	.word	_Label_152
	.word	-36
	.word	4
	.word	_Label_153
	.word	-40
	.word	4
	.word	_Label_154
	.word	-44
	.word	4
	.word	_Label_155
	.word	-48
	.word	4
	.word	_Label_156
	.word	-52
	.word	4
	.word	_Label_157
	.word	-56
	.word	4
	.word	_Label_158
	.word	-60
	.word	4
	.word	0
_Label_145:
	.ascii	"InitializeScheduler\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_129_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_129_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	39,r13		! source line 39
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0WH",r10
_Label_159:
!	jmp	_Label_160
_Label_160:
	mov	49,r13		! source line 49
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0IF",r10
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   _temp_164 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_162 else goto _Label_163
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_163
	jmp	_Label_162
_Label_162:
! THEN...
	mov	52,r13		! source line 52
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_165
_Label_163:
! ELSE...
	mov	54,r13		! source line 54
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_165:
! END WHILE...
	jmp	_Label_159
_Label_161:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_129_IdleFunction:
	.word	_sourceFileName
	.word	_Label_166
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_167
	.word	8
	.word	4
	.word	_Label_168
	.word	-12
	.word	4
	.word	_Label_169
	.word	-16
	.word	4
	.word	0
_Label_166:
	.ascii	"IdleFunction\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_169:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	61,r13		! source line 61
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_172 ) then goto _Label_171		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_171
!	jmp	_Label_170
_Label_170:
! THEN...
	mov	78,r13		! source line 78
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_174 [0 ] into _temp_175
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_173 = _temp_175		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_173  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_171:
! ASSIGNMENT STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_176 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_176 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0WH",r10
_Label_177:
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_180  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_180 then goto _Label_179 else goto _Label_178
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_178
	jmp	_Label_179
_Label_178:
	mov	91,r13		! source line 91
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_182 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_183 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_177
_Label_179:
! IF STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_186 ) then goto _Label_185		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_185
!	jmp	_Label_184
_Label_184:
! THEN...
	mov	97,r13		! source line 97
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_188 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_188 [0 ] into _temp_189
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_187 = _temp_189		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_191 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_190 = *_temp_191  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_190) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_192 = _temp_190 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_185:
! RETURN STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_193
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_194
	.word	8
	.word	4
	.word	_Label_195
	.word	-16
	.word	4
	.word	_Label_196
	.word	-20
	.word	4
	.word	_Label_197
	.word	-24
	.word	4
	.word	_Label_198
	.word	-28
	.word	4
	.word	_Label_199
	.word	-32
	.word	4
	.word	_Label_200
	.word	-36
	.word	4
	.word	_Label_201
	.word	-40
	.word	4
	.word	_Label_202
	.word	-44
	.word	4
	.word	_Label_203
	.word	-48
	.word	4
	.word	_Label_204
	.word	-52
	.word	4
	.word	_Label_205
	.word	-9
	.word	1
	.word	_Label_206
	.word	-56
	.word	4
	.word	_Label_207
	.word	-60
	.word	4
	.word	_Label_208
	.word	-64
	.word	4
	.word	_Label_209
	.word	-68
	.word	4
	.word	_Label_210
	.word	-72
	.word	4
	.word	_Label_211
	.word	-76
	.word	4
	.word	_Label_212
	.word	-80
	.word	4
	.word	0
_Label_193:
	.ascii	"Run\0"
	.align
_Label_194:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_205:
	.byte	'C'
	.ascii	"_temp_180\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_211:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_212:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	104,r13		! source line 104
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_213 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_213  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_214 = _function_128_ThreadPrintShort
	set	_function_128_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_215 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_216
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_217
	.word	-12
	.word	4
	.word	_Label_218
	.word	-16
	.word	4
	.word	_Label_219
	.word	-20
	.word	4
	.word	_Label_220
	.word	-24
	.word	4
	.word	0
_Label_216:
	.ascii	"PrintReadyList\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_220:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
	mov	119,r13		! source line 119
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_221  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_223 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_222 = *_temp_223  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	133,r13		! source line 133
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_224 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	135,r13		! source line 135
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_225
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_226
	.word	-12
	.word	4
	.word	_Label_227
	.word	-16
	.word	4
	.word	_Label_228
	.word	-20
	.word	4
	.word	_Label_229
	.word	-24
	.word	4
	.word	_Label_230
	.word	-28
	.word	4
	.word	_Label_231
	.word	-32
	.word	4
	.word	0
_Label_225:
	.ascii	"ThreadStartMain\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_230:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_231:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	140,r13		! source line 140
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_232 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_233 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	158,r13		! source line 158
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_234
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_235
	.word	-12
	.word	4
	.word	_Label_236
	.word	-16
	.word	4
	.word	_Label_237
	.word	-20
	.word	4
	.word	0
_Label_234:
	.ascii	"ThreadFinish\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1754:
	push	r0
	sub	r1,1,r1
	bne	_Label_1754
	mov	163,r13		! source line 163
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_238 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_240		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	174,r13		! source line 174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_241 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_242 = *_temp_243  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_240:
! CALL STATEMENT...
!   _temp_244 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_245 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_246 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_247
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_248
	.word	8
	.word	4
	.word	_Label_249
	.word	-12
	.word	4
	.word	_Label_250
	.word	-16
	.word	4
	.word	_Label_251
	.word	-20
	.word	4
	.word	_Label_252
	.word	-24
	.word	4
	.word	_Label_253
	.word	-28
	.word	4
	.word	_Label_254
	.word	-32
	.word	4
	.word	_Label_255
	.word	-36
	.word	4
	.word	_Label_256
	.word	-40
	.word	4
	.word	0
_Label_247:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_248:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	186,r13		! source line 186
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_258		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	202,r13		! source line 202
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_259
_Label_258:
! ELSE...
	mov	205,r13		! source line 205
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_259:
! RETURN STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_260
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_261
	.word	8
	.word	4
	.word	_Label_262
	.word	-12
	.word	4
	.word	0
_Label_260:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_262:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_128_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_128_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	704,r13		! source line 704
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_266		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_266
!   _temp_265 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_267
_Label_266:
!   _temp_265 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_267:
!   if _temp_265 then goto _Label_264 else goto _Label_263
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_263
	jmp	_Label_264
_Label_263:
! THEN...
	mov	713,r13		! source line 713
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_268 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_264:
! CALL STATEMENT...
!   _temp_269 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_270 = *_temp_271  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_272 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	719,r13		! source line 719
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_275
	cmp	r1,2
	be	_Label_276
	cmp	r1,3
	be	_Label_277
	cmp	r1,4
	be	_Label_278
	cmp	r1,5
	be	_Label_279
	jmp	_Label_273
! CASE 1...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 2...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 3...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 4...
_Label_278:
! CALL STATEMENT...
!   _temp_285 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 5...
_Label_279:
! CALL STATEMENT...
!   _temp_286 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0BR",r10
	jmp	_Label_274
! DEFAULT CASE...
_Label_273:
! CALL STATEMENT...
!   _temp_287 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	736,r13		! source line 736
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_274:
! CALL STATEMENT...
!   _temp_288 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_289 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_290 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_128_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_291
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_292
	.word	8
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	_Label_296
	.word	-28
	.word	4
	.word	_Label_297
	.word	-32
	.word	4
	.word	_Label_298
	.word	-36
	.word	4
	.word	_Label_299
	.word	-40
	.word	4
	.word	_Label_300
	.word	-44
	.word	4
	.word	_Label_301
	.word	-48
	.word	4
	.word	_Label_302
	.word	-52
	.word	4
	.word	_Label_303
	.word	-56
	.word	4
	.word	_Label_304
	.word	-60
	.word	4
	.word	_Label_305
	.word	-64
	.word	4
	.word	_Label_306
	.word	-68
	.word	4
	.word	_Label_307
	.word	-72
	.word	4
	.word	_Label_308
	.word	-76
	.word	4
	.word	_Label_309
	.word	-9
	.word	1
	.word	_Label_310
	.word	-80
	.word	4
	.word	0
_Label_291:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_292:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_309:
	.byte	'C'
	.ascii	"_temp_265\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_127_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	1063,r13		! source line 1063
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_311 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_312
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_313
	.word	8
	.word	4
	.word	_Label_314
	.word	-12
	.word	4
	.word	0
_Label_312:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	1073,r13		! source line 1073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_315 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1079,r13		! source line 1079
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_316
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_317
	.word	8
	.word	4
	.word	_Label_318
	.word	-12
	.word	4
	.word	0
_Label_316:
	.ascii	"ProcessFinish\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1759:
	push	r0
	sub	r1,1,r1
	bne	_Label_1759
	mov	1597,r13		! source line 1597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_319:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1760:
	push	r0
	sub	r1,1,r1
	bne	_Label_1760
	mov	1615,r13		! source line 1615
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_320 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1625,r13		! source line 1625
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_321:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1637,r13		! source line 1637
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_323:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	1651,r13		! source line 1651
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_324 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_325
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	1663,r13		! source line 1663
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_327 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	1675,r13		! source line 1675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_330 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_333 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1765:
	push	r0
	sub	r1,1,r1
	bne	_Label_1765
	mov	1699,r13		! source line 1699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_336 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_342 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_343
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_343:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_126_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	1735,r13		! source line 1735
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_345 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_346 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_349 == 0 then goto _Label_348		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_348
!	jmp	_Label_347
_Label_347:
! THEN...
	mov	1746,r13		! source line 1746
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_351) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_353
_Label_348:
! ELSE...
	mov	1748,r13		! source line 1748
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_354 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_353:
! SEND STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_355
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_356
	.word	8
	.word	4
	.word	_Label_357
	.word	-12
	.word	4
	.word	_Label_358
	.word	-16
	.word	4
	.word	_Label_359
	.word	-20
	.word	4
	.word	_Label_360
	.word	-24
	.word	4
	.word	_Label_361
	.word	-28
	.word	4
	.word	_Label_362
	.word	-32
	.word	4
	.word	_Label_363
	.word	-36
	.word	4
	.word	0
_Label_355:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_356:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1769:
	push	r0
	sub	r1,1,r1
	bne	_Label_1769
	mov	1761,r13		! source line 1761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1782,r13		! source line 1782
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1770
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_364
_Label_1770:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_364
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_364
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_378,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_378:
	jmp	_Label_370	! 1:	
	jmp	_Label_377	! 2:	
	jmp	_Label_367	! 3:	
	jmp	_Label_366	! 4:	
	jmp	_Label_369	! 5:	
	jmp	_Label_368	! 6:	
	jmp	_Label_371	! 7:	
	jmp	_Label_372	! 8:	
	jmp	_Label_373	! 9:	
	jmp	_Label_374	! 10:	
	jmp	_Label_375	! 11:	
	jmp	_Label_376	! 12:	
! CASE 4...
_Label_366:
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_367:
! CALL STATEMENT...
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_368:
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_369:
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_370:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_371:
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_372:
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_373:
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_374:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_385  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_385  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_375:
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_386  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_376:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_377:
! CALL STATEMENT...
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_364:
! CALL STATEMENT...
!   _temp_387 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_388 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1815,r13		! source line 1815
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_365:
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_389
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_390
	.word	8
	.word	4
	.word	_Label_391
	.word	12
	.word	4
	.word	_Label_392
	.word	16
	.word	4
	.word	_Label_393
	.word	20
	.word	4
	.word	_Label_394
	.word	24
	.word	4
	.word	_Label_395
	.word	-12
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	_Label_400
	.word	-32
	.word	4
	.word	_Label_401
	.word	-36
	.word	4
	.word	_Label_402
	.word	-40
	.word	4
	.word	_Label_403
	.word	-44
	.word	4
	.word	_Label_404
	.word	-48
	.word	4
	.word	0
_Label_389:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_393:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_394:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_405
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_406
	.word	8
	.word	4
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_406:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1834,r13		! source line 1834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_408
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_409
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1847,r13		! source line 1847
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1861,r13		! source line 1861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1875,r13		! source line 1875
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_418
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	12
	.word	4
	.word	_Label_421
	.word	16
	.word	4
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1882,r13		! source line 1882
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_422
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	12
	.word	4
	.word	_Label_425
	.word	16
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1889,r13		! source line 1889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_426
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	12
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_429
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_430
	.word	8
	.word	4
	.word	0
_Label_429:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_431
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_431:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_432
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_432:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1771:
	push	r0
	sub	r1,1,r1
	bne	_Label_1771
	mov	237,r13		! source line 237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_434		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_434
!	jmp	_Label_433
_Label_433:
! THEN...
	mov	239,r13		! source line 239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_435 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	239,r13		! source line 239
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_434:
! ASSIGNMENT STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_437
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_439
	.word	12
	.word	4
	.word	_Label_440
	.word	-12
	.word	4
	.word	_Label_441
	.word	-16
	.word	4
	.word	0
_Label_437:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_438:
	.ascii	"Pself\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	247,r13		! source line 247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_444 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	253,r13		! source line 253
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_443:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_446		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_446
!	jmp	_Label_445
_Label_445:
! THEN...
	mov	257,r13		! source line 257
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
	mov	257,r13		! source line 257
	mov	"\0\0SE",r10
!   _temp_447 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_448 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_449 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_446:
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_450
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_452
	.word	-12
	.word	4
	.word	_Label_453
	.word	-16
	.word	4
	.word	_Label_454
	.word	-20
	.word	4
	.word	_Label_455
	.word	-24
	.word	4
	.word	_Label_456
	.word	-28
	.word	4
	.word	_Label_457
	.word	-32
	.word	4
	.word	0
_Label_450:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_451:
	.ascii	"Pself\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_457:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	266,r13		! source line 266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	269,r13		! source line 269
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_459		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_459
!	jmp	_Label_458
_Label_458:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_460 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	271,r13		! source line 271
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_459:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_462		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_462
!	jmp	_Label_461
_Label_461:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_463 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_462:
! ASSIGNMENT STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_464
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	0
_Label_464:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_465:
	.ascii	"Pself\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_469
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_469:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_470
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_470:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_473:
	.ascii	"Pself\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	307,r13		! source line 307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_476		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_476
!	jmp	_Label_475
_Label_475:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_477 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	311,r13		! source line 311
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_476:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_481		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_481
!   _temp_480 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_482
_Label_481:
!   _temp_480 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_482:
!   if _temp_480 then goto _Label_479 else goto _Label_478
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_478
	jmp	_Label_479
_Label_478:
! THEN...
	mov	315,r13		! source line 315
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_483
_Label_479:
! ELSE...
	mov	317,r13		! source line 317
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_484 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_483:
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	320,r13		! source line 320
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_485
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_487
	.word	-16
	.word	4
	.word	_Label_488
	.word	-9
	.word	1
	.word	_Label_489
	.word	-20
	.word	4
	.word	_Label_490
	.word	-24
	.word	4
	.word	0
_Label_485:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_486:
	.ascii	"Pself\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_488:
	.byte	'C'
	.ascii	"_temp_480\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	325,r13		! source line 325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_492		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_492
!	jmp	_Label_491
_Label_491:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_493 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	330,r13		! source line 330
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_492:
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
	mov	333,r13		! source line 333
	mov	"\0\0SE",r10
!   _temp_494 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_496		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_496
!	jmp	_Label_495
_Label_495:
! THEN...
	mov	335,r13		! source line 335
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_497 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   _temp_498 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_499
_Label_496:
! ELSE...
	mov	339,r13		! source line 339
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_499:
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	0
_Label_500:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_501:
	.ascii	"Pself\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_507:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	346,r13		! source line 346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_510		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_510
!	jmp	_Label_509
_Label_509:
!   _temp_508 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_511
_Label_510:
!   _temp_508 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_511:
!   ReturnResult: _temp_508  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_512
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_514
	.word	-9
	.word	1
	.word	0
_Label_512:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_513:
	.ascii	"Pself\0"
	.align
_Label_514:
	.byte	'C'
	.ascii	"_temp_508\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_515
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_515:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_516
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_516:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_518
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_519:
	.ascii	"Pself\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	393,r13		! source line 393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_523  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_523 then goto _Label_522 else goto _Label_521
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_521
	jmp	_Label_522
_Label_521:
! THEN...
	mov	397,r13		! source line 397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_524 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	397,r13		! source line 397
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_522:
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   _temp_525 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_526
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	12
	.word	4
	.word	_Label_529
	.word	-16
	.word	4
	.word	_Label_530
	.word	-20
	.word	4
	.word	_Label_531
	.word	-9
	.word	1
	.word	_Label_532
	.word	-24
	.word	4
	.word	0
_Label_526:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_531:
	.byte	'C'
	.ascii	"_temp_523\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	409,r13		! source line 409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_535  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_535 then goto _Label_534 else goto _Label_533
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_534
_Label_533:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	414,r13		! source line 414
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_534:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
	mov	417,r13		! source line 417
	mov	"\0\0SE",r10
!   _temp_537 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_539		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_539
!	jmp	_Label_538
_Label_538:
! THEN...
	mov	419,r13		! source line 419
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_540 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0SE",r10
!   _temp_541 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_539:
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_542
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_544
	.word	12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-20
	.word	4
	.word	_Label_547
	.word	-24
	.word	4
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-9
	.word	1
	.word	_Label_550
	.word	-32
	.word	4
	.word	_Label_551
	.word	-36
	.word	4
	.word	0
_Label_542:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_543:
	.ascii	"Pself\0"
	.align
_Label_544:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_549:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_551:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1781:
	push	r0
	sub	r1,1,r1
	bne	_Label_1781
	mov	427,r13		! source line 427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_554  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_554 then goto _Label_553 else goto _Label_552
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_552
	jmp	_Label_553
_Label_552:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_555 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	432,r13		! source line 432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_553:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0WH",r10
_Label_556:
!	jmp	_Label_557
_Label_557:
	mov	435,r13		! source line 435
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_559 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_560
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_560
	jmp	_Label_561
_Label_560:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0BR",r10
	jmp	_Label_558
! END IF...
_Label_561:
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_562 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   _temp_563 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_556
_Label_558:
! ASSIGNMENT STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_564
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_566
	.word	12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	_Label_568
	.word	-20
	.word	4
	.word	_Label_569
	.word	-24
	.word	4
	.word	_Label_570
	.word	-28
	.word	4
	.word	_Label_571
	.word	-9
	.word	1
	.word	_Label_572
	.word	-32
	.word	4
	.word	_Label_573
	.word	-36
	.word	4
	.word	0
_Label_564:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_565:
	.ascii	"Pself\0"
	.align
_Label_566:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_571:
	.byte	'C'
	.ascii	"_temp_554\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_573:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_574
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_3	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_2	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_574:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_575
	.word	_sourceFileName
	.word	163		! line number
	.word	36		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_575:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_1782:
	push	r0
	sub	r1,1,r1
	bne	_Label_1782
	mov	455,r13		! source line 455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! RETURN STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_577
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_577:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_578:
	.ascii	"Pself\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	10,r1
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	462,r13		! source line 462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_582  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_582 then goto _Label_581 else goto _Label_580
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_580
	jmp	_Label_581
_Label_580:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_583 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_581:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
!   _temp_584 = &waitingThreads
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_585 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-24],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_587		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_587
!	jmp	_Label_586
_Label_586:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_588 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_587:
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_590
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_592
	.word	12
	.word	4
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-24
	.word	4
	.word	_Label_596
	.word	-28
	.word	4
	.word	_Label_597
	.word	-32
	.word	4
	.word	_Label_598
	.word	-9
	.word	1
	.word	_Label_599
	.word	-36
	.word	4
	.word	_Label_600
	.word	-40
	.word	4
	.word	0
_Label_590:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_591:
	.ascii	"Pself\0"
	.align
_Label_592:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_598:
	.byte	'C'
	.ascii	"_temp_582\0"
	.align
_Label_599:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_600:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	6,r1
_Label_1784:
	push	r0
	sub	r1,1,r1
	bne	_Label_1784
	mov	484,r13		! source line 484
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0IF",r10
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_603  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_603 then goto _Label_602 else goto _Label_601
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_601
	jmp	_Label_602
_Label_601:
! THEN...
	mov	489,r13		! source line 489
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_604 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	489,r13		! source line 489
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_602:
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0SE",r10
!   _temp_605 = &waitingThreads
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_606
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_608
	.word	12
	.word	4
	.word	_Label_609
	.word	-16
	.word	4
	.word	_Label_610
	.word	-20
	.word	4
	.word	_Label_611
	.word	-9
	.word	1
	.word	_Label_612
	.word	-24
	.word	4
	.word	0
_Label_606:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_607:
	.ascii	"Pself\0"
	.align
_Label_608:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_611:
	.byte	'C'
	.ascii	"_temp_603\0"
	.align
_Label_612:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_613
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_613:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_614
	.word	_sourceFileName
	.word	176		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_614:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1785:
	push	r0
	sub	r1,1,r1
	bne	_Label_1785
	mov	511,r13		! source line 511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   _temp_615 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_615 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   _temp_616 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_616 [0 ] into _temp_617
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_617 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   _temp_618 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_618 [999 ] into _temp_619
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_619 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   _temp_620 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_620 [999 ] into _temp_621
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_621		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   _temp_622 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_624 = &_temp_623
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_624 = _temp_624 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_626:
!   Data Move: *_temp_624 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_624 = _temp_624 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_625 = _temp_625 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_625) then goto _Label_626
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_626
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_627 = &_temp_623
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1786
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1786:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_622 = *_temp_627  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1787:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1787
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   _temp_628 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_630 = &_temp_629
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_630 = _temp_630 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_632:
!   Data Move: *_temp_630 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_630 = _temp_630 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_631 = _temp_631 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_631) then goto _Label_632
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_632
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_633 = &_temp_629
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1788
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1788:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_628 = *_temp_633  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1789:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1789
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_634
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_636
	.word	12
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-84
	.word	64
	.word	_Label_641
	.word	-88
	.word	4
	.word	_Label_642
	.word	-92
	.word	4
	.word	_Label_643
	.word	-96
	.word	4
	.word	_Label_644
	.word	-100
	.word	4
	.word	_Label_645
	.word	-156
	.word	56
	.word	_Label_646
	.word	-160
	.word	4
	.word	_Label_647
	.word	-164
	.word	4
	.word	_Label_648
	.word	-168
	.word	4
	.word	_Label_649
	.word	-172
	.word	4
	.word	_Label_650
	.word	-176
	.word	4
	.word	_Label_651
	.word	-180
	.word	4
	.word	_Label_652
	.word	-184
	.word	4
	.word	_Label_653
	.word	-188
	.word	4
	.word	0
_Label_634:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_635:
	.ascii	"Pself\0"
	.align
_Label_636:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_654  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_656 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_657
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_659
	.word	12
	.word	4
	.word	_Label_660
	.word	16
	.word	4
	.word	_Label_661
	.word	-12
	.word	4
	.word	_Label_662
	.word	-16
	.word	4
	.word	_Label_663
	.word	-20
	.word	4
	.word	_Label_664
	.word	-24
	.word	4
	.word	_Label_665
	.word	-28
	.word	4
	.word	0
_Label_657:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_658:
	.ascii	"Pself\0"
	.align
_Label_659:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	554,r13		! source line 554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_668 == _P_Kernel_currentThread then goto _Label_667		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_667:
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0AS",r10
	mov	577,r13		! source line 577
	mov	"\0\0SE",r10
!   _temp_670 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_672		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_672
!	jmp	_Label_671
_Label_671:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_674		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_674
!	jmp	_Label_673
_Label_673:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_675 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	583,r13		! source line 583
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_674:
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_677 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_672:
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_678
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_680
	.word	-12
	.word	4
	.word	_Label_681
	.word	-16
	.word	4
	.word	_Label_682
	.word	-20
	.word	4
	.word	_Label_683
	.word	-24
	.word	4
	.word	_Label_684
	.word	-28
	.word	4
	.word	_Label_685
	.word	-32
	.word	4
	.word	_Label_686
	.word	-36
	.word	4
	.word	_Label_687
	.word	-40
	.word	4
	.word	_Label_688
	.word	-44
	.word	4
	.word	0
_Label_678:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_679:
	.ascii	"Pself\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_690		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_690
!	jmp	_Label_689
_Label_689:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	607,r13		! source line 607
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_690:
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_694 == _P_Kernel_currentThread then goto _Label_693		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_693
!	jmp	_Label_692
_Label_692:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_693:
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_696 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_697
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_697
	jmp	_Label_698
_Label_697:
! THEN...
	mov	619,r13		! source line 619
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_699 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_698:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_700
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_702
	.word	-12
	.word	4
	.word	_Label_703
	.word	-16
	.word	4
	.word	_Label_704
	.word	-20
	.word	4
	.word	_Label_705
	.word	-24
	.word	4
	.word	_Label_706
	.word	-28
	.word	4
	.word	_Label_707
	.word	-32
	.word	4
	.word	0
_Label_700:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_701:
	.ascii	"Pself\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_707:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	626,r13		! source line 626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0IF",r10
!   _temp_711 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_711 [0 ] into _temp_712
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_710 = *_temp_712  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_710 == 606348324 then goto _Label_709		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_709
!	jmp	_Label_708
_Label_708:
! THEN...
	mov	633,r13		! source line 633
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_713 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	633,r13		! source line 633
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_714
_Label_709:
! ELSE...
	mov	634,r13		! source line 634
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0IF",r10
!   _temp_718 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_718 [999 ] into _temp_719
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_717 = *_temp_719  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_717 == 606348324 then goto _Label_716		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_716
!	jmp	_Label_715
_Label_715:
! THEN...
	mov	635,r13		! source line 635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_720 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	635,r13		! source line 635
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_716:
! END IF...
_Label_714:
! RETURN STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_721
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_723
	.word	-12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-32
	.word	4
	.word	_Label_729
	.word	-36
	.word	4
	.word	_Label_730
	.word	-40
	.word	4
	.word	0
_Label_721:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_722:
	.ascii	"Pself\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	641,r13		! source line 641
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_731 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_734 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_735 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_740 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_741 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_740  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_736:
!   Perform the FOR-LOOP termination test
!   if i > _temp_741 then goto _Label_739		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_739
_Label_737:
	mov	654,r13		! source line 654
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_742 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_743 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_744 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_746 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_746 [i ] into _temp_747
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_745 = *_temp_747  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_748 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_750 [i ] into _temp_751
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_749 = *_temp_751  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_752 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_738:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_736
! END FOR
_Label_739:
! CALL STATEMENT...
!   _temp_753 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-116]
!   _temp_754 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_754  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_755 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-108]
!   _temp_757 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_757 [0 ] into _temp_758
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_756 = _temp_758		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_756  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	665,r13		! source line 665
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_761
	cmp	r1,2
	be	_Label_762
	cmp	r1,3
	be	_Label_763
	cmp	r1,4
	be	_Label_764
	cmp	r1,5
	be	_Label_765
	jmp	_Label_759
! CASE 1...
_Label_761:
! CALL STATEMENT...
!   _temp_766 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 2...
_Label_762:
! CALL STATEMENT...
!   _temp_767 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 3...
_Label_763:
! CALL STATEMENT...
!   _temp_768 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 4...
_Label_764:
! CALL STATEMENT...
!   _temp_769 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 5...
_Label_765:
! CALL STATEMENT...
!   _temp_770 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0BR",r10
	jmp	_Label_760
! DEFAULT CASE...
_Label_759:
! CALL STATEMENT...
!   _temp_771 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	682,r13		! source line 682
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_760:
! CALL STATEMENT...
!   _temp_772 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_773 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_778 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_779 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_778  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_774:
!   Perform the FOR-LOOP termination test
!   if i > _temp_779 then goto _Label_777		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_777
_Label_775:
	mov	688,r13		! source line 688
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_781 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_782 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_784 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_784 [i ] into _temp_785
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_783 = *_temp_785  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_786 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_788 [i ] into _temp_789
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_787 = *_temp_789  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_790 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_776:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_774
! END FOR
_Label_777:
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_791
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_792
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_793
	.word	-12
	.word	4
	.word	_Label_794
	.word	-16
	.word	4
	.word	_Label_795
	.word	-20
	.word	4
	.word	_Label_796
	.word	-24
	.word	4
	.word	_Label_797
	.word	-28
	.word	4
	.word	_Label_798
	.word	-32
	.word	4
	.word	_Label_799
	.word	-36
	.word	4
	.word	_Label_800
	.word	-40
	.word	4
	.word	_Label_801
	.word	-44
	.word	4
	.word	_Label_802
	.word	-48
	.word	4
	.word	_Label_803
	.word	-52
	.word	4
	.word	_Label_804
	.word	-56
	.word	4
	.word	_Label_805
	.word	-60
	.word	4
	.word	_Label_806
	.word	-64
	.word	4
	.word	_Label_807
	.word	-68
	.word	4
	.word	_Label_808
	.word	-72
	.word	4
	.word	_Label_809
	.word	-76
	.word	4
	.word	_Label_810
	.word	-80
	.word	4
	.word	_Label_811
	.word	-84
	.word	4
	.word	_Label_812
	.word	-88
	.word	4
	.word	_Label_813
	.word	-92
	.word	4
	.word	_Label_814
	.word	-96
	.word	4
	.word	_Label_815
	.word	-100
	.word	4
	.word	_Label_816
	.word	-104
	.word	4
	.word	_Label_817
	.word	-108
	.word	4
	.word	_Label_818
	.word	-112
	.word	4
	.word	_Label_819
	.word	-116
	.word	4
	.word	_Label_820
	.word	-120
	.word	4
	.word	_Label_821
	.word	-124
	.word	4
	.word	_Label_822
	.word	-128
	.word	4
	.word	_Label_823
	.word	-132
	.word	4
	.word	_Label_824
	.word	-136
	.word	4
	.word	_Label_825
	.word	-140
	.word	4
	.word	_Label_826
	.word	-144
	.word	4
	.word	_Label_827
	.word	-148
	.word	4
	.word	_Label_828
	.word	-152
	.word	4
	.word	_Label_829
	.word	-156
	.word	4
	.word	_Label_830
	.word	-160
	.word	4
	.word	_Label_831
	.word	-164
	.word	4
	.word	_Label_832
	.word	-168
	.word	4
	.word	_Label_833
	.word	-172
	.word	4
	.word	_Label_834
	.word	-176
	.word	4
	.word	_Label_835
	.word	-180
	.word	4
	.word	_Label_836
	.word	-184
	.word	4
	.word	_Label_837
	.word	-188
	.word	4
	.word	_Label_838
	.word	-192
	.word	4
	.word	_Label_839
	.word	-196
	.word	4
	.word	0
_Label_791:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_792:
	.ascii	"Pself\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_840
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_840:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_841
	.word	_sourceFileName
	.word	203		! line number
	.word	41716		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_841:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	752,r13		! source line 752
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_842 = _StringConst_76
	set	_StringConst_76,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_845 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=36)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	mov	9,r3
_Label_1796:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1796
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_847 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   _temp_848 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_850 = &_temp_849
	set	-45880,r1
	add	r14,r1,r1
	store	r1,[r14+-4236]
!   _temp_850 = _temp_850 + 4
	load	[r14+-4236],r1
	add	r1,4,r1
	store	r1,[r14+-4236]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_852 = zeros  (sizeInBytes=4164)
	add	r14,-4228,r4
	mov	1041,r3
_Label_1797:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1797
!   _temp_852 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4228]
	mov	10,r1
	store	r1,[r14+-4232]
_Label_854:
!   Data Move: *_temp_850 = _temp_852  (sizeInBytes=4164)
	add	r14,-4228,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_1798:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1798
!   _temp_850 = _temp_850 + 4164
	load	[r14+-4236],r1
	add	r1,4164,r1
	store	r1,[r14+-4236]
!   _temp_851 = _temp_851 + -1
	load	[r14+-4232],r1
	add	r1,-1,r1
	store	r1,[r14+-4232]
!   if intNotZero (_temp_851) then goto _Label_854
	load	[r14+-4232],r1
	cmp	r1,r0
	bne	_Label_854
!   Initialize the array size...
	mov	10,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   _temp_855 = &_temp_849
	set	-45880,r1
	add	r14,r1,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	set	-45884,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1799
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1799:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_848 = *_temp_855  (sizeInBytes=41644)
	load	[r14+-60],r5
	set	-45884,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1800:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1800
! FOR STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_860 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_861 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_860  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_856:
!   Perform the FOR-LOOP termination test
!   if i > _temp_861 then goto _Label_859		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_859
_Label_857:
	mov	768,r13		! source line 768
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_862 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-48]
!   _temp_863 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_863 [i ] into _temp_864
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_862  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0AS",r10
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_865 [i ] into _temp_866
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_867 = _temp_866 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_867 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_869 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_869 [i ] into _temp_870
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_868 = _temp_870		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_871 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_868  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_858:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_856
! END FOR
_Label_859:
! RETURN STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_872
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_874
	.word	-12
	.word	4
	.word	_Label_875
	.word	-16
	.word	4
	.word	_Label_876
	.word	-20
	.word	4
	.word	_Label_877
	.word	-24
	.word	4
	.word	_Label_878
	.word	-28
	.word	4
	.word	_Label_879
	.word	-32
	.word	4
	.word	_Label_880
	.word	-36
	.word	4
	.word	_Label_881
	.word	-40
	.word	4
	.word	_Label_882
	.word	-44
	.word	4
	.word	_Label_883
	.word	-48
	.word	4
	.word	_Label_884
	.word	-52
	.word	4
	.word	_Label_885
	.word	-56
	.word	4
	.word	_Label_886
	.word	-60
	.word	4
	.word	_Label_887
	.word	-64
	.word	4
	.word	_Label_888
	.word	-4228
	.word	4164
	.word	_Label_889
	.word	-4232
	.word	4
	.word	_Label_890
	.word	-4236
	.word	4
	.word	_Label_891
	.word	-45880
	.word	41644
	.word	_Label_892
	.word	-45884
	.word	4
	.word	_Label_893
	.word	-45888
	.word	4
	.word	_Label_894
	.word	-45892
	.word	4
	.word	_Label_895
	.word	-45896
	.word	4
	.word	_Label_896
	.word	-45900
	.word	4
	.word	_Label_897
	.word	-45904
	.word	4
	.word	_Label_898
	.word	-45908
	.word	4
	.word	_Label_899
	.word	-45912
	.word	4
	.word	0
_Label_872:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_873:
	.ascii	"Pself\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	778,r13		! source line 778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_900 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_905 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_906 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_905  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_901:
!   Perform the FOR-LOOP termination test
!   if i > _temp_906 then goto _Label_904		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_904
_Label_902:
	mov	787,r13		! source line 787
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_908 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_910 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_910 [i ] into _temp_911
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_909 = _temp_911		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CA",r10
	call	_function_128_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_903:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_901
! END FOR
_Label_904:
! CALL STATEMENT...
!   _temp_912 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0SE",r10
!   _temp_913 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_914 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_913  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_915
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	_Label_922
	.word	-32
	.word	4
	.word	_Label_923
	.word	-36
	.word	4
	.word	_Label_924
	.word	-40
	.word	4
	.word	_Label_925
	.word	-44
	.word	4
	.word	_Label_926
	.word	-48
	.word	4
	.word	_Label_927
	.word	-52
	.word	4
	.word	_Label_928
	.word	-56
	.word	4
	.word	_Label_929
	.word	-60
	.word	4
	.word	0
_Label_915:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	801,r13		! source line 801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   newThread = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_930 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0IF",r10
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_933 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_931 else goto _Label_932
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_932
	jmp	_Label_931
_Label_931:
! THEN...
	mov	822,r13		! source line 822
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0SE",r10
!   _temp_934 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_935 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_934  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_932:
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
	mov	826,r13		! source line 826
	mov	"\0\0SE",r10
!   _temp_936 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = newThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_937 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_938 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0RE",r10
!   ReturnResult: newThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_939
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_941
	.word	-12
	.word	4
	.word	_Label_942
	.word	-16
	.word	4
	.word	_Label_943
	.word	-20
	.word	4
	.word	_Label_944
	.word	-24
	.word	4
	.word	_Label_945
	.word	-28
	.word	4
	.word	_Label_946
	.word	-32
	.word	4
	.word	_Label_947
	.word	-36
	.word	4
	.word	_Label_948
	.word	-40
	.word	4
	.word	0
_Label_939:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_940:
	.ascii	"Pself\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	836,r13		! source line 836
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
!   _temp_949 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_950 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0SE",r10
!   _temp_951 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0SE",r10
!   _temp_952 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_953 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_952  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0SE",r10
!   _temp_954 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_955
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_957
	.word	12
	.word	4
	.word	_Label_958
	.word	-12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	0
_Label_955:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_956:
	.ascii	"Pself\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_964
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_964:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_965
	.word	_sourceFileName
	.word	224		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_965:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	865,r13		! source line 865
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1805:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1805
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_967 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_968
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_970
	.word	-12
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	0
_Label_968:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_969:
	.ascii	"Pself\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_972) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0SE",r10
!   _temp_973 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_974 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_function_128_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_975
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	-12
	.word	4
	.word	_Label_978
	.word	-16
	.word	4
	.word	_Label_979
	.word	-20
	.word	4
	.word	0
_Label_975:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1807:
	push	r0
	sub	r1,1,r1
	bne	_Label_1807
	mov	902,r13		! source line 902
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_980 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_982 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_983 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_985		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_985
!	jmp	_Label_984
_Label_984:
! THEN...
	mov	912,r13		! source line 912
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_986 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_987
_Label_985:
! ELSE...
	mov	913,r13		! source line 913
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_989		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	914,r13		! source line 914
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_990 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_991
_Label_989:
! ELSE...
	mov	915,r13		! source line 915
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_993		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_993
!	jmp	_Label_992
_Label_992:
! THEN...
	mov	916,r13		! source line 916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_994 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_994  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_995
_Label_993:
! ELSE...
	mov	918,r13		! source line 918
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_996 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	918,r13		! source line 918
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_995:
! END IF...
_Label_991:
! END IF...
_Label_987:
! CALL STATEMENT...
!   _temp_997 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_998 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_999
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	-12
	.word	4
	.word	_Label_1002
	.word	-16
	.word	4
	.word	_Label_1003
	.word	-20
	.word	4
	.word	_Label_1004
	.word	-24
	.word	4
	.word	_Label_1005
	.word	-28
	.word	4
	.word	_Label_1006
	.word	-32
	.word	4
	.word	_Label_1007
	.word	-36
	.word	4
	.word	_Label_1008
	.word	-40
	.word	4
	.word	_Label_1009
	.word	-44
	.word	4
	.word	_Label_1010
	.word	-48
	.word	4
	.word	0
_Label_999:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1011
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1011:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1012
	.word	_sourceFileName
	.word	244		! line number
	.word	1356		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1012:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	935,r13		! source line 935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1352]
! ASSIGNMENT STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=36)
	load	[r14+8],r4
	add	r4,1316,r4
	mov	9,r3
_Label_1809:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1809
!   aProcessDied = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+1316]
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_1014 = &aProcessDied
	load	[r14+8],r1
	add	r1,1316,r1
	store	r1,[r14+-1464]
!   Send message Init
	load	[r14+-1464],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=36)
	load	[r14+8],r4
	add	r4,1268,r4
	mov	9,r3
_Label_1810:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1810
!   aProcessBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_1016 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_1018 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1304,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1304]
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   _temp_1020 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1022 = &_temp_1021
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1022 = _temp_1022 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1024 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_1811:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1811
!   _temp_1024 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1026:
!   Data Move: *_temp_1022 = _temp_1024  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_1812:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1812
!   _temp_1022 = _temp_1022 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1023 = _temp_1023 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1023) then goto _Label_1026
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1026
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1027 = &_temp_1021
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1813
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1813:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1020 = *_temp_1027  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_1814:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1814
! FOR STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1032 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1033 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1032  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1028:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1033 then goto _Label_1031		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1031
_Label_1029:
	mov	955,r13		! source line 955
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1034 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1034 [i ] into _temp_1035
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1037 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1037 [i ] into _temp_1038
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1036 = _temp_1038		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1039 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1036  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
!   _temp_1040 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1040 [i ] into _temp_1041
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1042 = _temp_1041 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1042 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1030:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1028
! END FOR
_Label_1031:
! RETURN STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1043
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1045
	.word	-12
	.word	4
	.word	_Label_1046
	.word	-16
	.word	4
	.word	_Label_1047
	.word	-20
	.word	4
	.word	_Label_1048
	.word	-24
	.word	4
	.word	_Label_1049
	.word	-28
	.word	4
	.word	_Label_1050
	.word	-32
	.word	4
	.word	_Label_1051
	.word	-36
	.word	4
	.word	_Label_1052
	.word	-40
	.word	4
	.word	_Label_1053
	.word	-44
	.word	4
	.word	_Label_1054
	.word	-48
	.word	4
	.word	_Label_1055
	.word	-52
	.word	4
	.word	_Label_1056
	.word	-56
	.word	4
	.word	_Label_1057
	.word	-60
	.word	4
	.word	_Label_1058
	.word	-184
	.word	124
	.word	_Label_1059
	.word	-188
	.word	4
	.word	_Label_1060
	.word	-192
	.word	4
	.word	_Label_1061
	.word	-1436
	.word	1244
	.word	_Label_1062
	.word	-1440
	.word	4
	.word	_Label_1063
	.word	-1444
	.word	4
	.word	_Label_1064
	.word	-1448
	.word	4
	.word	_Label_1065
	.word	-1452
	.word	4
	.word	_Label_1066
	.word	-1456
	.word	4
	.word	_Label_1067
	.word	-1460
	.word	4
	.word	_Label_1068
	.word	-1464
	.word	4
	.word	_Label_1069
	.word	-1468
	.word	4
	.word	_Label_1070
	.word	-1472
	.word	4
	.word	0
_Label_1043:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1044:
	.ascii	"Pself\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1070:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	964,r13		! source line 964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	971,r13		! source line 971
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1071 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1076 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1077 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1076  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1072:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1077 then goto _Label_1075		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1075
_Label_1073:
	mov	973,r13		! source line 973
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1078 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1079 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1080 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1080 [i ] into _temp_1081
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1074:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1072
! END FOR
_Label_1075:
! CALL STATEMENT...
!   _temp_1082 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1083 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1084 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1083  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1085
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-24
	.word	4
	.word	_Label_1091
	.word	-28
	.word	4
	.word	_Label_1092
	.word	-32
	.word	4
	.word	_Label_1093
	.word	-36
	.word	4
	.word	_Label_1094
	.word	-40
	.word	4
	.word	_Label_1095
	.word	-44
	.word	4
	.word	_Label_1096
	.word	-48
	.word	4
	.word	_Label_1097
	.word	-52
	.word	4
	.word	_Label_1098
	.word	-56
	.word	4
	.word	0
_Label_1085:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1086:
	.ascii	"Pself\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1097:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1098:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1099 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	995,r13		! source line 995
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1104 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1105 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1104  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1100:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1105 then goto _Label_1103		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1103
_Label_1101:
	mov	996,r13		! source line 996
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1106 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1106  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1107 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1107 [i ] into _temp_1108
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1102:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1100
! END FOR
_Label_1103:
! CALL STATEMENT...
!   _temp_1109 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1110 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1111 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1110  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1004,r13		! source line 1004
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1112
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1114
	.word	-12
	.word	4
	.word	_Label_1115
	.word	-16
	.word	4
	.word	_Label_1116
	.word	-20
	.word	4
	.word	_Label_1117
	.word	-24
	.word	4
	.word	_Label_1118
	.word	-28
	.word	4
	.word	_Label_1119
	.word	-32
	.word	4
	.word	_Label_1120
	.word	-36
	.word	4
	.word	_Label_1121
	.word	-40
	.word	4
	.word	_Label_1122
	.word	-44
	.word	4
	.word	_Label_1123
	.word	-48
	.word	4
	.word	_Label_1124
	.word	-52
	.word	4
	.word	0
_Label_1112:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1113:
	.ascii	"Pself\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1123:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
	mov	1009,r13		! source line 1009
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0AS",r10
!   newProcess = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1125 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0IF",r10
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1128 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1126 else goto _Label_1127
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1127
	jmp	_Label_1126
_Label_1126:
! THEN...
	mov	1029,r13		! source line 1029
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1129 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1130 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1129  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1127:
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1352],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1352]
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1131 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = newProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1132 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1133 = newProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1133 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1352],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1134 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0RE",r10
!   ReturnResult: newProcess  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1135
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1137
	.word	-12
	.word	4
	.word	_Label_1138
	.word	-16
	.word	4
	.word	_Label_1139
	.word	-20
	.word	4
	.word	_Label_1140
	.word	-24
	.word	4
	.word	_Label_1141
	.word	-28
	.word	4
	.word	_Label_1142
	.word	-32
	.word	4
	.word	_Label_1143
	.word	-36
	.word	4
	.word	_Label_1144
	.word	-40
	.word	4
	.word	_Label_1145
	.word	-44
	.word	4
	.word	0
_Label_1135:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1136:
	.ascii	"Pself\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1145:
	.byte	'P'
	.ascii	"newProcess\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	1047,r13		! source line 1047
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1146 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1147 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1147 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1148 = &freeList
	load	[r14+8],r1
	add	r1,1304,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1149 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1150 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1149  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1151 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1152
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1154
	.word	12
	.word	4
	.word	_Label_1155
	.word	-12
	.word	4
	.word	_Label_1156
	.word	-16
	.word	4
	.word	_Label_1157
	.word	-20
	.word	4
	.word	_Label_1158
	.word	-24
	.word	4
	.word	_Label_1159
	.word	-28
	.word	4
	.word	_Label_1160
	.word	-32
	.word	4
	.word	0
_Label_1152:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1153:
	.ascii	"Pself\0"
	.align
_Label_1154:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1161
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1161:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1162
	.word	_sourceFileName
	.word	267		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1162:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1163 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1094,r13		! source line 1094
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1165 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1167 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=36)
	load	[r14+8],r4
	add	r4,40,r4
	mov	9,r3
_Label_1820:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1820
!   newFramesAvailable = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1169 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1174 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1175 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1174  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1170:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1175 then goto _Label_1173		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1173
_Label_1171:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1178 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1178) then goto _Label_1177
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1177
!	jmp	_Label_1176
_Label_1176:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1111,r13		! source line 1111
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1177:
!   Increment the FOR-LOOP index variable and jump back
_Label_1172:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1170
! END FOR
_Label_1173:
! RETURN STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1180
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1182
	.word	-12
	.word	4
	.word	_Label_1183
	.word	-16
	.word	4
	.word	_Label_1184
	.word	-20
	.word	4
	.word	_Label_1185
	.word	-24
	.word	4
	.word	_Label_1186
	.word	-28
	.word	4
	.word	_Label_1187
	.word	-32
	.word	4
	.word	_Label_1188
	.word	-36
	.word	4
	.word	_Label_1189
	.word	-40
	.word	4
	.word	_Label_1190
	.word	-44
	.word	4
	.word	_Label_1191
	.word	-48
	.word	4
	.word	_Label_1192
	.word	-52
	.word	4
	.word	_Label_1193
	.word	-56
	.word	4
	.word	0
_Label_1180:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1181:
	.ascii	"Pself\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1821:
	push	r0
	sub	r1,1,r1
	bne	_Label_1821
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1194 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1195 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1196 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1197 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1198 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1199 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1200
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1202
	.word	-12
	.word	4
	.word	_Label_1203
	.word	-16
	.word	4
	.word	_Label_1204
	.word	-20
	.word	4
	.word	_Label_1205
	.word	-24
	.word	4
	.word	_Label_1206
	.word	-28
	.word	4
	.word	_Label_1207
	.word	-32
	.word	4
	.word	0
_Label_1200:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1201:
	.ascii	"Pself\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1822:
	push	r0
	sub	r1,1,r1
	bne	_Label_1822
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1208 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0IF",r10
!   if numberFreeFrames >= 1 then goto _Label_1210		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1210
!	jmp	_Label_1209
_Label_1209:
! THEN...
	mov	1145,r13		! source line 1145
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_1211 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1212 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1211  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1210:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1213 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1214 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   _temp_1215 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1215		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1216
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1218
	.word	-12
	.word	4
	.word	_Label_1219
	.word	-16
	.word	4
	.word	_Label_1220
	.word	-20
	.word	4
	.word	_Label_1221
	.word	-24
	.word	4
	.word	_Label_1222
	.word	-28
	.word	4
	.word	_Label_1223
	.word	-32
	.word	4
	.word	_Label_1224
	.word	-36
	.word	4
	.word	_Label_1225
	.word	-40
	.word	4
	.word	0
_Label_1216:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1217:
	.ascii	"Pself\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1224:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1225:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	14,r1
_Label_1823:
	push	r0
	sub	r1,1,r1
	bne	_Label_1823
	mov	1163,r13		! source line 1163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1226 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0IF",r10
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1228		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1228
!	jmp	_Label_1227
_Label_1227:
! THEN...
	mov	1185,r13		! source line 1185
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_1229 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1230 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1228:
! FOR STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1235 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1236 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1235  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_1231:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1236 then goto _Label_1234		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1234
_Label_1232:
	mov	1188,r13		! source line 1188
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_1237 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=freeFrame  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   _temp_1238 = freeFrame * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   frameAddr = 1048576 + _temp_1238		(int)
	set	1048576,r1
	load	[r14+-16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1233:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1231
! END FOR
_Label_1234:
! ASSIGNMENT STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1239 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1239 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1240
	.word	12		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1242
	.word	12
	.word	4
	.word	_Label_1243
	.word	16
	.word	4
	.word	_Label_1244
	.word	-12
	.word	4
	.word	_Label_1245
	.word	-16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-36
	.word	4
	.word	_Label_1251
	.word	-40
	.word	4
	.word	_Label_1252
	.word	-44
	.word	4
	.word	_Label_1253
	.word	-48
	.word	4
	.word	_Label_1254
	.word	-52
	.word	4
	.word	0
_Label_1240:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1241:
	.ascii	"Pself\0"
	.align
_Label_1242:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1243:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0IF",r10
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1258 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Send message IsHeldByCurrentThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1257  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1257 then goto _Label_1256 else goto _Label_1255
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1255
	jmp	_Label_1256
_Label_1255:
! THEN...
	mov	1217,r13		! source line 1217
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1259 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1256:
! FOR STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1264 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1267 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1266 = *_temp_1267  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1265 = _temp_1266 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1264  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-68]
_Label_1260:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1265 then goto _Label_1263		
	load	[r14+-68],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1263
_Label_1261:
	mov	1220,r13		! source line 1220
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1268 = frameAddr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1268 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   _temp_1269 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1262:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_1260
! END FOR
_Label_1263:
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1270 = *_temp_1271  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1270		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1272 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1273 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_1274 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1275
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1276
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1277
	.word	12
	.word	4
	.word	_Label_1278
	.word	-16
	.word	4
	.word	_Label_1279
	.word	-20
	.word	4
	.word	_Label_1280
	.word	-24
	.word	4
	.word	_Label_1281
	.word	-28
	.word	4
	.word	_Label_1282
	.word	-32
	.word	4
	.word	_Label_1283
	.word	-36
	.word	4
	.word	_Label_1284
	.word	-40
	.word	4
	.word	_Label_1285
	.word	-44
	.word	4
	.word	_Label_1286
	.word	-48
	.word	4
	.word	_Label_1287
	.word	-52
	.word	4
	.word	_Label_1288
	.word	-56
	.word	4
	.word	_Label_1289
	.word	-60
	.word	4
	.word	_Label_1290
	.word	-64
	.word	4
	.word	_Label_1291
	.word	-9
	.word	1
	.word	_Label_1292
	.word	-68
	.word	4
	.word	_Label_1293
	.word	-72
	.word	4
	.word	_Label_1294
	.word	-76
	.word	4
	.word	0
_Label_1275:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1276:
	.ascii	"Pself\0"
	.align
_Label_1277:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1291:
	.byte	'C'
	.ascii	"_temp_1257\0"
	.align
_Label_1292:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1293:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1294:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1295
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1295:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1296
	.word	_sourceFileName
	.word	286		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1296:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0AS",r10
!   _temp_1297 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1299 = &_temp_1298
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1299 = _temp_1299 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1301:
!   Data Move: *_temp_1299 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1299 = _temp_1299 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1300 = _temp_1300 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1300) then goto _Label_1301
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1301
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1302 = &_temp_1298
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1826
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1826:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1297 = *_temp_1302  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1827:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1827
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1303
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1305
	.word	-12
	.word	4
	.word	_Label_1306
	.word	-16
	.word	4
	.word	_Label_1307
	.word	-20
	.word	4
	.word	_Label_1308
	.word	-104
	.word	84
	.word	_Label_1309
	.word	-108
	.word	4
	.word	0
_Label_1303:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1304:
	.ascii	"Pself\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1310 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1311 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1316 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1317 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1316  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1312:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1317 then goto _Label_1315		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1315
_Label_1313:
	mov	1262,r13		! source line 1262
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1318 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1320 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1320 [i ] into _temp_1321
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1319 = _temp_1321		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1322 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1324 [i ] into _temp_1325
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1323 = *_temp_1325  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1326 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1327 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1328 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1329  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1331 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0IF",r10
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1335) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1334  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1334) then goto _Label_1333
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1333
!	jmp	_Label_1332
_Label_1332:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1336  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1338
_Label_1333:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1339 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1339  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1338:
! CALL STATEMENT...
!   _temp_1340 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0IF",r10
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1343) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1341 else goto _Label_1342
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1342
	jmp	_Label_1341
_Label_1341:
! THEN...
	mov	1279,r13		! source line 1279
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1344 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1344  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1345
_Label_1342:
! ELSE...
	mov	1281,r13		! source line 1281
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1346 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1345:
! CALL STATEMENT...
!   _temp_1347 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0IF",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1350) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1348 else goto _Label_1349
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1349
	jmp	_Label_1348
_Label_1348:
! THEN...
	mov	1285,r13		! source line 1285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1351 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1351  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1352
_Label_1349:
! ELSE...
	mov	1287,r13		! source line 1287
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1353 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1352:
! CALL STATEMENT...
!   _temp_1354 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0IF",r10
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1357) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1355 else goto _Label_1356
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1356
	jmp	_Label_1355
_Label_1355:
! THEN...
	mov	1291,r13		! source line 1291
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1358 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1358  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1359
_Label_1356:
! ELSE...
	mov	1293,r13		! source line 1293
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1360 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1359:
! CALL STATEMENT...
!   _temp_1361 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1361  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0IF",r10
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1364) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1362 else goto _Label_1363
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1363
	jmp	_Label_1362
_Label_1362:
! THEN...
	mov	1297,r13		! source line 1297
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1365 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1365  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1366
_Label_1363:
! ELSE...
	mov	1299,r13		! source line 1299
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1367 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1367  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1366:
! CALL STATEMENT...
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1314:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1312
! END FOR
_Label_1315:
! RETURN STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1368
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1369
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1370
	.word	-12
	.word	4
	.word	_Label_1371
	.word	-16
	.word	4
	.word	_Label_1372
	.word	-20
	.word	4
	.word	_Label_1373
	.word	-24
	.word	4
	.word	_Label_1374
	.word	-28
	.word	4
	.word	_Label_1375
	.word	-32
	.word	4
	.word	_Label_1376
	.word	-36
	.word	4
	.word	_Label_1377
	.word	-40
	.word	4
	.word	_Label_1378
	.word	-44
	.word	4
	.word	_Label_1379
	.word	-48
	.word	4
	.word	_Label_1380
	.word	-52
	.word	4
	.word	_Label_1381
	.word	-56
	.word	4
	.word	_Label_1382
	.word	-60
	.word	4
	.word	_Label_1383
	.word	-64
	.word	4
	.word	_Label_1384
	.word	-68
	.word	4
	.word	_Label_1385
	.word	-72
	.word	4
	.word	_Label_1386
	.word	-76
	.word	4
	.word	_Label_1387
	.word	-80
	.word	4
	.word	_Label_1388
	.word	-84
	.word	4
	.word	_Label_1389
	.word	-88
	.word	4
	.word	_Label_1390
	.word	-92
	.word	4
	.word	_Label_1391
	.word	-96
	.word	4
	.word	_Label_1392
	.word	-100
	.word	4
	.word	_Label_1393
	.word	-104
	.word	4
	.word	_Label_1394
	.word	-108
	.word	4
	.word	_Label_1395
	.word	-112
	.word	4
	.word	_Label_1396
	.word	-116
	.word	4
	.word	_Label_1397
	.word	-120
	.word	4
	.word	_Label_1398
	.word	-124
	.word	4
	.word	_Label_1399
	.word	-128
	.word	4
	.word	_Label_1400
	.word	-132
	.word	4
	.word	_Label_1401
	.word	-136
	.word	4
	.word	_Label_1402
	.word	-140
	.word	4
	.word	_Label_1403
	.word	-144
	.word	4
	.word	_Label_1404
	.word	-148
	.word	4
	.word	_Label_1405
	.word	-152
	.word	4
	.word	_Label_1406
	.word	-156
	.word	4
	.word	_Label_1407
	.word	-160
	.word	4
	.word	_Label_1408
	.word	-164
	.word	4
	.word	_Label_1409
	.word	-168
	.word	4
	.word	0
_Label_1368:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1369:
	.ascii	"Pself\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1409:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_1412 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1412 [entry ] into _temp_1413
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1411 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1410 = _temp_1411 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1410  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1414
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1415
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1416
	.word	12
	.word	4
	.word	_Label_1417
	.word	-12
	.word	4
	.word	_Label_1418
	.word	-16
	.word	4
	.word	_Label_1419
	.word	-20
	.word	4
	.word	_Label_1420
	.word	-24
	.word	4
	.word	0
_Label_1414:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1415:
	.ascii	"Pself\0"
	.align
_Label_1416:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   _temp_1423 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1423 [entry ] into _temp_1424
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1422 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1421 = _temp_1422 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1421  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1425
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1427
	.word	12
	.word	4
	.word	_Label_1428
	.word	-12
	.word	4
	.word	_Label_1429
	.word	-16
	.word	4
	.word	_Label_1430
	.word	-20
	.word	4
	.word	_Label_1431
	.word	-24
	.word	4
	.word	0
_Label_1425:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1426:
	.ascii	"Pself\0"
	.align
_Label_1427:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   _temp_1432 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1432 [entry ] into _temp_1433
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1437 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1437 [entry ] into _temp_1438
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1436 = *_temp_1438  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1435 = _temp_1436 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1434 = _temp_1435 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1433 = _temp_1434  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1439
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	12
	.word	4
	.word	_Label_1442
	.word	16
	.word	4
	.word	_Label_1443
	.word	-12
	.word	4
	.word	_Label_1444
	.word	-16
	.word	4
	.word	_Label_1445
	.word	-20
	.word	4
	.word	_Label_1446
	.word	-24
	.word	4
	.word	_Label_1447
	.word	-28
	.word	4
	.word	_Label_1448
	.word	-32
	.word	4
	.word	_Label_1449
	.word	-36
	.word	4
	.word	0
_Label_1439:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1442:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1832:
	push	r0
	sub	r1,1,r1
	bne	_Label_1832
	mov	1336,r13		! source line 1336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0RE",r10
!   _temp_1453 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1453 [entry ] into _temp_1454
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1452 = *_temp_1454  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1451 = _temp_1452 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1451) then goto _Label_1455
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1455
!   _temp_1450 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1456
_Label_1455:
!   _temp_1450 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1456:
!   ReturnResult: _temp_1450  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1457
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1459
	.word	12
	.word	4
	.word	_Label_1460
	.word	-16
	.word	4
	.word	_Label_1461
	.word	-20
	.word	4
	.word	_Label_1462
	.word	-24
	.word	4
	.word	_Label_1463
	.word	-28
	.word	4
	.word	_Label_1464
	.word	-9
	.word	1
	.word	0
_Label_1457:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1458:
	.ascii	"Pself\0"
	.align
_Label_1459:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1464:
	.byte	'C'
	.ascii	"_temp_1450\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1833:
	push	r0
	sub	r1,1,r1
	bne	_Label_1833
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0RE",r10
!   _temp_1468 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1468 [entry ] into _temp_1469
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1467 = *_temp_1469  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1466 = _temp_1467 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1466) then goto _Label_1470
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1470
!   _temp_1465 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1471
_Label_1470:
!   _temp_1465 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1471:
!   ReturnResult: _temp_1465  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1472
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1474
	.word	12
	.word	4
	.word	_Label_1475
	.word	-16
	.word	4
	.word	_Label_1476
	.word	-20
	.word	4
	.word	_Label_1477
	.word	-24
	.word	4
	.word	_Label_1478
	.word	-28
	.word	4
	.word	_Label_1479
	.word	-9
	.word	1
	.word	0
_Label_1472:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1473:
	.ascii	"Pself\0"
	.align
_Label_1474:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1479:
	.byte	'C'
	.ascii	"_temp_1465\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0RE",r10
!   _temp_1483 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1483 [entry ] into _temp_1484
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1482 = *_temp_1484  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1481 = _temp_1482 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1481) then goto _Label_1485
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1485
!   _temp_1480 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1486
_Label_1485:
!   _temp_1480 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1486:
!   ReturnResult: _temp_1480  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1487
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	_Label_1492
	.word	-24
	.word	4
	.word	_Label_1493
	.word	-28
	.word	4
	.word	_Label_1494
	.word	-9
	.word	1
	.word	0
_Label_1487:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1494:
	.byte	'C'
	.ascii	"_temp_1480\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
!   _temp_1498 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1498 [entry ] into _temp_1499
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1497 = *_temp_1499  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1496 = _temp_1497 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1496) then goto _Label_1500
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1500
!   _temp_1495 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1501
_Label_1500:
!   _temp_1495 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1501:
!   ReturnResult: _temp_1495  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1502
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1504
	.word	12
	.word	4
	.word	_Label_1505
	.word	-16
	.word	4
	.word	_Label_1506
	.word	-20
	.word	4
	.word	_Label_1507
	.word	-24
	.word	4
	.word	_Label_1508
	.word	-28
	.word	4
	.word	_Label_1509
	.word	-9
	.word	1
	.word	0
_Label_1502:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1503:
	.ascii	"Pself\0"
	.align
_Label_1504:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1509:
	.byte	'C'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   _temp_1510 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1510 [entry ] into _temp_1511
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1514 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1514 [entry ] into _temp_1515
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1513 = *_temp_1515  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1512 = _temp_1513 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1511 = _temp_1512  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1516
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1518
	.word	12
	.word	4
	.word	_Label_1519
	.word	-12
	.word	4
	.word	_Label_1520
	.word	-16
	.word	4
	.word	_Label_1521
	.word	-20
	.word	4
	.word	_Label_1522
	.word	-24
	.word	4
	.word	_Label_1523
	.word	-28
	.word	4
	.word	_Label_1524
	.word	-32
	.word	4
	.word	0
_Label_1516:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1517:
	.ascii	"Pself\0"
	.align
_Label_1518:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	1381,r13		! source line 1381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   _temp_1525 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1525 [entry ] into _temp_1526
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1529 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1529 [entry ] into _temp_1530
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1528 = *_temp_1530  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1527 = _temp_1528 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1526 = _temp_1527  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1531
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	12
	.word	4
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	0
_Label_1531:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   _temp_1540 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1540 [entry ] into _temp_1541
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1544 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1544 [entry ] into _temp_1545
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1543 = *_temp_1545  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1542 = _temp_1543 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1541 = _temp_1542  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1546
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1548
	.word	12
	.word	4
	.word	_Label_1549
	.word	-12
	.word	4
	.word	_Label_1550
	.word	-16
	.word	4
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-28
	.word	4
	.word	_Label_1554
	.word	-32
	.word	4
	.word	0
_Label_1546:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1547:
	.ascii	"Pself\0"
	.align
_Label_1548:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1839:
	push	r0
	sub	r1,1,r1
	bne	_Label_1839
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   _temp_1555 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1555 [entry ] into _temp_1556
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1559 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1559 [entry ] into _temp_1560
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1558 = *_temp_1560  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1557 = _temp_1558 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1556 = _temp_1557  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1561
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	12
	.word	4
	.word	_Label_1564
	.word	-12
	.word	4
	.word	_Label_1565
	.word	-16
	.word	4
	.word	_Label_1566
	.word	-20
	.word	4
	.word	_Label_1567
	.word	-24
	.word	4
	.word	_Label_1568
	.word	-28
	.word	4
	.word	_Label_1569
	.word	-32
	.word	4
	.word	0
_Label_1561:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
	mov	1408,r13		! source line 1408
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0AS",r10
!   _temp_1570 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1570 [entry ] into _temp_1571
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1574 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1574 [entry ] into _temp_1575
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1573 = *_temp_1575  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1572 = _temp_1573 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1571 = _temp_1572  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1576
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	12
	.word	4
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	_Label_1583
	.word	-28
	.word	4
	.word	_Label_1584
	.word	-32
	.word	4
	.word	0
_Label_1576:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	1417,r13		! source line 1417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   _temp_1585 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1585 [entry ] into _temp_1586
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1589 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1589 [entry ] into _temp_1590
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1588 = *_temp_1590  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1587 = _temp_1588 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1586 = _temp_1587  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1591
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1593
	.word	12
	.word	4
	.word	_Label_1594
	.word	-12
	.word	4
	.word	_Label_1595
	.word	-16
	.word	4
	.word	_Label_1596
	.word	-20
	.word	4
	.word	_Label_1597
	.word	-24
	.word	4
	.word	_Label_1598
	.word	-28
	.word	4
	.word	_Label_1599
	.word	-32
	.word	4
	.word	0
_Label_1591:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1592:
	.ascii	"Pself\0"
	.align
_Label_1593:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1842:
	push	r0
	sub	r1,1,r1
	bne	_Label_1842
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   _temp_1600 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1600 [entry ] into _temp_1601
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1604 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1604 [entry ] into _temp_1605
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1603 = *_temp_1605  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1602 = _temp_1603 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1601 = _temp_1602  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1606
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1608
	.word	12
	.word	4
	.word	_Label_1609
	.word	-12
	.word	4
	.word	_Label_1610
	.word	-16
	.word	4
	.word	_Label_1611
	.word	-20
	.word	4
	.word	_Label_1612
	.word	-24
	.word	4
	.word	_Label_1613
	.word	-28
	.word	4
	.word	_Label_1614
	.word	-32
	.word	4
	.word	0
_Label_1606:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1607:
	.ascii	"Pself\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1843:
	push	r0
	sub	r1,1,r1
	bne	_Label_1843
	mov	1435,r13		! source line 1435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   _temp_1615 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1615 [entry ] into _temp_1616
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1619 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1619 [entry ] into _temp_1620
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1618 = *_temp_1620  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1617 = _temp_1618 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1616 = _temp_1617  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1621
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1623
	.word	12
	.word	4
	.word	_Label_1624
	.word	-12
	.word	4
	.word	_Label_1625
	.word	-16
	.word	4
	.word	_Label_1626
	.word	-20
	.word	4
	.word	_Label_1627
	.word	-24
	.word	4
	.word	_Label_1628
	.word	-28
	.word	4
	.word	_Label_1629
	.word	-32
	.word	4
	.word	0
_Label_1621:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1622:
	.ascii	"Pself\0"
	.align
_Label_1623:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1844:
	push	r0
	sub	r1,1,r1
	bne	_Label_1844
	mov	1444,r13		! source line 1444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1631 [0 ] into _temp_1632
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1630 = _temp_1632		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1633 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1633  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1634
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1636
	.word	-12
	.word	4
	.word	_Label_1637
	.word	-16
	.word	4
	.word	_Label_1638
	.word	-20
	.word	4
	.word	_Label_1639
	.word	-24
	.word	4
	.word	0
_Label_1634:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1635:
	.ascii	"Pself\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1845:
	push	r0
	sub	r1,1,r1
	bne	_Label_1845
	mov	1455,r13		! source line 1455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1640
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1640
	jmp	_Label_1641
_Label_1640:
! THEN...
	mov	1471,r13		! source line 1471
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1642
_Label_1641:
! ELSE...
	mov	1472,r13		! source line 1472
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1644		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1644
!	jmp	_Label_1643
_Label_1643:
! THEN...
	mov	1473,r13		! source line 1473
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1644:
! END IF...
_Label_1642:
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0WH",r10
_Label_1645:
!	jmp	_Label_1646
_Label_1646:
	mov	1479,r13		! source line 1479
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1649		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1649
!	jmp	_Label_1648
_Label_1648:
! THEN...
	mov	1481,r13		! source line 1481
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1481,r13		! source line 1481
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1649:
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1654) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1653  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1653 then goto _Label_1652 else goto _Label_1651
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1651
	jmp	_Label_1652
_Label_1651:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1655 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1485,r13		! source line 1485
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1652:
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1657) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1656  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1656 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0WH",r10
_Label_1658:
!   if offset >= 8192 then goto _Label_1660		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1660
!	jmp	_Label_1659
_Label_1659:
	mov	1490,r13		! source line 1490
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1661 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1661  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1663		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1663
!	jmp	_Label_1662
_Label_1662:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1663:
! END WHILE...
	jmp	_Label_1658
_Label_1660:
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1645
_Label_1647:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1664
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	16
	.word	4
	.word	_Label_1668
	.word	20
	.word	4
	.word	_Label_1669
	.word	-9
	.word	1
	.word	_Label_1670
	.word	-16
	.word	4
	.word	_Label_1671
	.word	-20
	.word	4
	.word	_Label_1672
	.word	-24
	.word	4
	.word	_Label_1673
	.word	-28
	.word	4
	.word	_Label_1674
	.word	-10
	.word	1
	.word	_Label_1675
	.word	-32
	.word	4
	.word	_Label_1676
	.word	-36
	.word	4
	.word	_Label_1677
	.word	-40
	.word	4
	.word	_Label_1678
	.word	-44
	.word	4
	.word	_Label_1679
	.word	-48
	.word	4
	.word	0
_Label_1664:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1668:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1669:
	.byte	'C'
	.ascii	"_temp_1661\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1674:
	.byte	'C'
	.ascii	"_temp_1653\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1676:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1677:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1678:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1679:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1846:
	push	r0
	sub	r1,1,r1
	bne	_Label_1846
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1680
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1680
	jmp	_Label_1681
_Label_1680:
! THEN...
	mov	1521,r13		! source line 1521
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1682
_Label_1681:
! ELSE...
	mov	1522,r13		! source line 1522
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1684		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1684
!	jmp	_Label_1683
_Label_1683:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1684:
! END IF...
_Label_1682:
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0WH",r10
_Label_1685:
!	jmp	_Label_1686
_Label_1686:
	mov	1527,r13		! source line 1527
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1691		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1691
	jmp	_Label_1688
_Label_1691:
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1692  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1692 then goto _Label_1690 else goto _Label_1688
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1690
_Label_1690:
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1695) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1694  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1694 then goto _Label_1689 else goto _Label_1688
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1689
_Label_1688:
! THEN...
	mov	1531,r13		! source line 1531
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1689:
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1697) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1696  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1696 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0WH",r10
_Label_1698:
!   if offset >= 8192 then goto _Label_1700		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1700
!	jmp	_Label_1699
_Label_1699:
	mov	1534,r13		! source line 1534
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1701 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1701  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1703		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1703
!	jmp	_Label_1702
_Label_1702:
! THEN...
	mov	1541,r13		! source line 1541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1703:
! END WHILE...
	jmp	_Label_1698
_Label_1700:
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1685
_Label_1687:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1704
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1706
	.word	12
	.word	4
	.word	_Label_1707
	.word	16
	.word	4
	.word	_Label_1708
	.word	20
	.word	4
	.word	_Label_1709
	.word	-9
	.word	1
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-24
	.word	4
	.word	_Label_1713
	.word	-10
	.word	1
	.word	_Label_1714
	.word	-28
	.word	4
	.word	_Label_1715
	.word	-11
	.word	1
	.word	_Label_1716
	.word	-32
	.word	4
	.word	_Label_1717
	.word	-36
	.word	4
	.word	_Label_1718
	.word	-40
	.word	4
	.word	_Label_1719
	.word	-44
	.word	4
	.word	0
_Label_1704:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1705:
	.ascii	"Pself\0"
	.align
_Label_1706:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1707:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1709:
	.byte	'C'
	.ascii	"_temp_1701\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1713:
	.byte	'C'
	.ascii	"_temp_1694\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1715:
	.byte	'C'
	.ascii	"_temp_1692\0"
	.align
_Label_1716:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1717:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1718:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1719:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1847:
	push	r0
	sub	r1,1,r1
	bne	_Label_1847
	mov	1551,r13		! source line 1551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0IF",r10
	mov	1575,r13		! source line 1575
	mov	"\0\0SE",r10
!   _temp_1723 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1723  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1722  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1722 >= 4 then goto _Label_1721		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1721
!	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1578,r13		! source line 1578
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1721:
! IF STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1726		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1726
!	jmp	_Label_1725
_Label_1725:
! THEN...
	mov	1583,r13		! source line 1583
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1726:
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
	mov	1588,r13		! source line 1588
	mov	"\0\0SE",r10
!   _temp_1729 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1728 = _temp_1729 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1730 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1731) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1728  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1730  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1727  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1727  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1732
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1734
	.word	12
	.word	4
	.word	_Label_1735
	.word	16
	.word	4
	.word	_Label_1736
	.word	20
	.word	4
	.word	_Label_1737
	.word	-12
	.word	4
	.word	_Label_1738
	.word	-16
	.word	4
	.word	_Label_1739
	.word	-20
	.word	4
	.word	_Label_1740
	.word	-24
	.word	4
	.word	_Label_1741
	.word	-28
	.word	4
	.word	_Label_1742
	.word	-32
	.word	4
	.word	_Label_1743
	.word	-36
	.word	4
	.word	_Label_1744
	.word	-40
	.word	4
	.word	_Label_1745
	.word	-44
	.word	4
	.word	0
_Label_1732:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1733:
	.ascii	"Pself\0"
	.align
_Label_1734:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1735:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
