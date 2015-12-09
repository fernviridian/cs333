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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_208:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_207:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_206:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_204:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_203:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_202:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_201:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_200:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_199:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_197:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_196:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_195:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_194:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_193:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_192:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_191:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_190:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_189:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_188:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_187:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_186:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_185:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_184:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_183:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_182:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_181:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_180:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_179:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_178:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_177:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_176:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_175:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_174:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_173:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_170:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_169:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_168:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_167:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_166:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_165:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_164:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_163:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_162:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_161:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_160:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_159:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_158:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_157:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_152:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_142:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_141:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_137:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_135:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_134:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_133:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_132:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_131:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_130:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_129:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_120:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_119:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_115:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_113:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_112:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_111:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_107:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_106:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_105:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_103:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_97:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_96:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_95:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_94:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_93:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_92:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_91:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_90:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_89:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_86:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_85:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_84:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_82:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_77:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_71:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_68:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_67:
	.word	37			! length
	.ascii	"Didn\'t get an initial PC, so exiting."
	.align
_StringConst_66:
	.word	36			! length
	.ascii	"Unable to load file for some reason."
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"TestProgram2"
	.align
_StringConst_64:
	.word	15			! length
	.ascii	"theFirstProcess"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_62:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_61:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_60:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_59:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_56:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_55:
	.word	9			! length
	.ascii	"buffer = "
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_52:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_51:
	.word	9			! length
	.ascii	"buffer = "
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_48:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_47:
	.word	27			! length
	.ascii	"filename virtual address = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_44:
	.word	27			! length
	.ascii	"filename virtual address = "
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_42:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_39:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_38:
	.word	28			! length
	.ascii	"Handle_Sys_Shutdown invoked!"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_36:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	set	0x94549dcb,r4		! myHashVal = -1806393909
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	17,r13		! source line 17
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	24,r13		! source line 24
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	25,r13		! source line 25
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
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
	mov	27,r13		! source line 27
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
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3047:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3048:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3048
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_229 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_230 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
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
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	37,r13		! source line 37
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	37,r13		! source line 37
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
	.word	_Label_232
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	_Label_239
	.word	-36
	.word	4
	.word	_Label_240
	.word	-40
	.word	4
	.word	_Label_241
	.word	-44
	.word	4
	.word	_Label_242
	.word	-48
	.word	4
	.word	_Label_243
	.word	-52
	.word	4
	.word	_Label_244
	.word	-56
	.word	4
	.word	_Label_245
	.word	-60
	.word	4
	.word	0
_Label_232:
	.ascii	"InitializeScheduler\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0WH",r10
_Label_246:
!	jmp	_Label_247
_Label_247:
	mov	52,r13		! source line 52
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0IF",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_251 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_249 else goto _Label_250
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_250
	jmp	_Label_249
_Label_249:
! THEN...
	mov	55,r13		! source line 55
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_252
_Label_250:
! ELSE...
	mov	57,r13		! source line 57
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	57,r13		! source line 57
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
_Label_252:
! END WHILE...
	jmp	_Label_246
_Label_248:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_253
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	0
_Label_253:
	.ascii	"IdleFunction\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_256:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	64,r13		! source line 64
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	78,r13		! source line 78
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
	mov	80,r13		! source line 80
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	81,r13		! source line 81
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_261 [0 ] into _temp_262
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
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_258:
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
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
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0WH",r10
_Label_264:
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_267  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_267 then goto _Label_266 else goto _Label_265
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_265
	jmp	_Label_266
_Label_265:
	mov	94,r13		! source line 94
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_threadsToBeDestroyed
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
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Kernel_threadManager
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
	jmp	_Label_264
_Label_266:
! IF STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_273 ) then goto _Label_272		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_272
!	jmp	_Label_271
_Label_271:
! THEN...
	mov	100,r13		! source line 100
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_275 [0 ] into _temp_276
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
!   _temp_274 = _temp_276		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_277) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _temp_277 + 32
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
_Label_272:
! RETURN STATEMENT...
	mov	99,r13		! source line 99
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
	.word	_Label_280
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_281
	.word	8
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	_Label_287
	.word	-36
	.word	4
	.word	_Label_288
	.word	-40
	.word	4
	.word	_Label_289
	.word	-44
	.word	4
	.word	_Label_290
	.word	-48
	.word	4
	.word	_Label_291
	.word	-52
	.word	4
	.word	_Label_292
	.word	-9
	.word	1
	.word	_Label_293
	.word	-56
	.word	4
	.word	_Label_294
	.word	-60
	.word	4
	.word	_Label_295
	.word	-64
	.word	4
	.word	_Label_296
	.word	-68
	.word	4
	.word	_Label_297
	.word	-72
	.word	4
	.word	_Label_298
	.word	-76
	.word	4
	.word	_Label_299
	.word	-80
	.word	4
	.word	0
_Label_280:
	.ascii	"Run\0"
	.align
_Label_281:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_292:
	.byte	'C'
	.ascii	"_temp_267\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_299:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	107,r13		! source line 107
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_300 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_301 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_302 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_301  sizeInBytes=4
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
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	117,r13		! source line 117
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	0
_Label_303:
	.ascii	"PrintReadyList\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_307:
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	122,r13		! source line 122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_308 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	136,r13		! source line 136
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_311 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	138,r13		! source line 138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	138,r13		! source line 138
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
	.word	_Label_312
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	0
_Label_312:
	.ascii	"ThreadStartMain\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_318:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	143,r13		! source line 143
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_319 = &_P_Kernel_threadsToBeDestroyed
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
	mov	159,r13		! source line 159
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
!   _temp_320 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	161,r13		! source line 161
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	161,r13		! source line 161
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
	.word	_Label_321
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	0
_Label_321:
	.ascii	"ThreadFinish\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	166,r13		! source line 166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_325 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_327		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_327
!	jmp	_Label_326
_Label_326:
! THEN...
	mov	177,r13		! source line 177
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_328 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_327:
! CALL STATEMENT...
!   _temp_331 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_332 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_333 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	184,r13		! source line 184
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
	.word	_Label_334
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_335
	.word	8
	.word	4
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	_Label_340
	.word	-28
	.word	4
	.word	_Label_341
	.word	-32
	.word	4
	.word	_Label_342
	.word	-36
	.word	4
	.word	_Label_343
	.word	-40
	.word	4
	.word	0
_Label_334:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_343:
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	189,r13		! source line 189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	205,r13		! source line 205
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_346
_Label_345:
! ELSE...
	mov	208,r13		! source line 208
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_346:
! RETURN STATEMENT...
	mov	211,r13		! source line 211
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
	.word	_Label_347
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_348
	.word	8
	.word	4
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	707,r13		! source line 707
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_353		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_353
!   _temp_352 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_354
_Label_353:
!   _temp_352 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_354:
!   if _temp_352 then goto _Label_351 else goto _Label_350
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_350
	jmp	_Label_351
_Label_350:
! THEN...
	mov	716,r13		! source line 716
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_351:
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_359 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	722,r13		! source line 722
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_368 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_362
	cmp	r1,2
	be	_Label_363
	cmp	r1,3
	be	_Label_364
	cmp	r1,4
	be	_Label_365
	cmp	r1,5
	be	_Label_366
	jmp	_Label_360
! CASE 1...
_Label_362:
! CALL STATEMENT...
!   _temp_369 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 2...
_Label_363:
! CALL STATEMENT...
!   _temp_370 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 4...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 5...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_361
! DEFAULT CASE...
_Label_360:
! CALL STATEMENT...
!   _temp_374 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	739,r13		! source line 739
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_361:
! CALL STATEMENT...
!   _temp_375 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_377 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	_Label_386
	.word	-40
	.word	4
	.word	_Label_387
	.word	-44
	.word	4
	.word	_Label_388
	.word	-48
	.word	4
	.word	_Label_389
	.word	-52
	.word	4
	.word	_Label_390
	.word	-56
	.word	4
	.word	_Label_391
	.word	-60
	.word	4
	.word	_Label_392
	.word	-64
	.word	4
	.word	_Label_393
	.word	-68
	.word	4
	.word	_Label_394
	.word	-72
	.word	4
	.word	_Label_395
	.word	-76
	.word	4
	.word	_Label_396
	.word	-9
	.word	1
	.word	_Label_397
	.word	-80
	.word	4
	.word	0
_Label_378:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_396:
	.byte	'C'
	.ascii	"_temp_352\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1066,r13		! source line 1066
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_398 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_399
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	0
_Label_399:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_400:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1076,r13		! source line 1076
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_402 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1082,r13		! source line 1082
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1082,r13		! source line 1082
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
	.word	_Label_403
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"ProcessFinish\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1612,r13		! source line 1612
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
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
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
	.word	_Label_406
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_406:
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
	mov	7,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0IF",r10
!   _temp_410 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_411 = _temp_410 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_409 == 0 then goto _Label_408		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_408
!	jmp	_Label_407
_Label_407:
! THEN...
	mov	1631,r13		! source line 1631
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_414 = _temp_413 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_412 = *_temp_414  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_412) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_408:
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_416
	.word	-12
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-24
	.word	4
	.word	_Label_420
	.word	-28
	.word	4
	.word	_Label_421
	.word	-32
	.word	4
	.word	0
_Label_415:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_409\0"
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
	.word	_Label_422
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_422:
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
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
!   _temp_423 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_424
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_423\0"
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
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
!   _temp_426 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_427
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_428
	.word	-12
	.word	4
	.word	0
_Label_427:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_426\0"
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
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
!   _temp_429 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_430
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
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
!   _temp_432 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_433
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_434
	.word	-12
	.word	4
	.word	0
_Label_433:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
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
!   _temp_435 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_436
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
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
!   _temp_438 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
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
!   _temp_441 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1735,r13		! source line 1735
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_444 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
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
!   _temp_445 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
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
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_448 == 0 then goto _Label_447		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_447
!	jmp	_Label_446
_Label_446:
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
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
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
	jmp	_Label_452
_Label_447:
! ELSE...
	mov	1748,r13		! source line 1748
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_453 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_452:
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
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	0
_Label_454:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
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
	be	_Label_3070
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_463
_Label_3070:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_463
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_463
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_477,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_477:
	jmp	_Label_469	! 1:	
	jmp	_Label_476	! 2:	
	jmp	_Label_466	! 3:	
	jmp	_Label_465	! 4:	
	jmp	_Label_468	! 5:	
	jmp	_Label_467	! 6:	
	jmp	_Label_470	! 7:	
	jmp	_Label_471	! 8:	
	jmp	_Label_472	! 9:	
	jmp	_Label_473	! 10:	
	jmp	_Label_474	! 11:	
	jmp	_Label_475	! 12:	
! CASE 4...
_Label_465:
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_478  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_466:
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
_Label_467:
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
!   Retrieve Result: targetName=_temp_479  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_479  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_468:
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
!   Retrieve Result: targetName=_temp_480  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_480  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_469:
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
_Label_470:
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
!   Retrieve Result: targetName=_temp_481  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_481  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_471:
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
!   Retrieve Result: targetName=_temp_482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_482  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_472:
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
!   Retrieve Result: targetName=_temp_483  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_483  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_473:
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
!   Retrieve Result: targetName=_temp_484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_484  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_474:
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
!   Retrieve Result: targetName=_temp_485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_485  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_475:
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
_Label_476:
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
_Label_463:
! CALL STATEMENT...
!   _temp_486 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
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
!   _temp_487 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
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
_Label_464:
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
	.word	_Label_488
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_489
	.word	8
	.word	4
	.word	_Label_490
	.word	12
	.word	4
	.word	_Label_491
	.word	16
	.word	4
	.word	_Label_492
	.word	20
	.word	4
	.word	_Label_493
	.word	24
	.word	4
	.word	_Label_494
	.word	-12
	.word	4
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-20
	.word	4
	.word	_Label_497
	.word	-24
	.word	4
	.word	_Label_498
	.word	-28
	.word	4
	.word	_Label_499
	.word	-32
	.word	4
	.word	_Label_500
	.word	-36
	.word	4
	.word	_Label_501
	.word	-40
	.word	4
	.word	_Label_502
	.word	-44
	.word	4
	.word	_Label_503
	.word	-48
	.word	4
	.word	0
_Label_488:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_478\0"
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
	mov	3,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1824,r13		! source line 1824
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_504 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_505 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_506
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_507
	.word	8
	.word	4
	.word	_Label_508
	.word	-12
	.word	4
	.word	_Label_509
	.word	-16
	.word	4
	.word	0
_Label_506:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_504\0"
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
	mov	2,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1834,r13		! source line 1834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_510 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1835,r13		! source line 1835
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
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
	mov	2,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_513 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
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
	mov	2,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1850,r13		! source line 1850
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_516 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
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
	mov	3,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_519 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_520 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_522:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_519\0"
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
	mov	78,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1869,r13		! source line 1869
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   _temp_525 = &fileBuffer
	add	r14,-304,r1
	store	r1,[r14+-164]
!   NEW ARRAY Constructor...
!   _temp_527 = &_temp_526
	add	r14,-160,r1
	store	r1,[r14+-136]
!   _temp_527 = _temp_527 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Next value...
	mov	20,r1
	store	r1,[r14+-132]
_Label_529:
!   Data Move: *_temp_527 = 48  (sizeInBytes=1)
	mov	48,r1
	load	[r14+-136],r2
	storeb	r1,[r2]
!   _temp_527 = _temp_527 + 1
	load	[r14+-136],r1
	add	r1,1,r1
	store	r1,[r14+-136]
!   _temp_528 = _temp_528 + -1
	load	[r14+-132],r1
	add	r1,-1,r1
	store	r1,[r14+-132]
!   if intNotZero (_temp_528) then goto _Label_529
	load	[r14+-132],r1
	cmp	r1,r0
	bne	_Label_529
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-160]
!   _temp_530 = &_temp_526
	add	r14,-160,r1
	store	r1,[r14+-128]
!   make sure array has size 20
	load	[r14+-164],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3077
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3077:
!   make sure array has size 20
	load	[r14+-128],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_525 = *_temp_530  (sizeInBytes=24)
	load	[r14+-128],r5
	load	[r14+-164],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-276,r4
	mov	23,r3
_Label_3078:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3078
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-276]
! SEND STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0SE",r10
!   _temp_532 = &newAddrSpace
	add	r14,-276,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_533 = &fileBuffer
	add	r14,-304,r1
	store	r1,[r14+-116]
!   _temp_534 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_535 = *_temp_536  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_535) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = _temp_535 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_533  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_534  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_539		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_539
!	jmp	_Label_538
_Label_538:
! THEN...
	mov	1889,r13		! source line 1889
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_539:
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_540 = &fileBuffer
	add	r14,-304,r1
	store	r1,[r14+-96]
!   _temp_541 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_540  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_542
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_542
	jmp	_Label_543
_Label_542:
! THEN...
	mov	1894,r13		! source line 1894
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_543:
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   _temp_544 = &newAddrSpace
	add	r14,-276,r1
	store	r1,[r14+-88]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_544  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_546		(int)
	load	[r14+-172],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_546
!	jmp	_Label_545
_Label_545:
! THEN...
	mov	1900,r13		! source line 1900
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_546:
! SEND STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   _temp_547 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_549 = *_temp_550  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_549) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_551 = _temp_549 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_548 = _temp_551		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-80]
!   _temp_552 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_548  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_553 = *_temp_554  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_553) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_555 = _temp_553 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_555 = newAddrSpace  (sizeInBytes=92)
	add	r14,-276,r5
	load	[r14+-52],r4
	mov	23,r3
_Label_3079:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3079
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
!   _temp_557 = &newAddrSpace
	add	r14,-276,r1
	store	r1,[r14+-44]
!   _temp_558 = _temp_557 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_556 = *_temp_558  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   initUserStackTop = _temp_556 * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_559 [999 ] into _temp_560
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_560		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! SEND STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_561 = *_temp_562  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_561) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = _temp_561 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_564 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_565 = initSystemStackTop		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_565  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_566
	.word	4		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_567
	.word	8
	.word	4
	.word	_Label_568
	.word	-12
	.word	4
	.word	_Label_569
	.word	-16
	.word	4
	.word	_Label_570
	.word	-20
	.word	4
	.word	_Label_571
	.word	-24
	.word	4
	.word	_Label_572
	.word	-28
	.word	4
	.word	_Label_573
	.word	-32
	.word	4
	.word	_Label_574
	.word	-36
	.word	4
	.word	_Label_575
	.word	-40
	.word	4
	.word	_Label_576
	.word	-44
	.word	4
	.word	_Label_577
	.word	-48
	.word	4
	.word	_Label_578
	.word	-52
	.word	4
	.word	_Label_579
	.word	-56
	.word	4
	.word	_Label_580
	.word	-60
	.word	4
	.word	_Label_581
	.word	-64
	.word	4
	.word	_Label_582
	.word	-68
	.word	4
	.word	_Label_583
	.word	-72
	.word	4
	.word	_Label_584
	.word	-76
	.word	4
	.word	_Label_585
	.word	-80
	.word	4
	.word	_Label_586
	.word	-84
	.word	4
	.word	_Label_587
	.word	-88
	.word	4
	.word	_Label_588
	.word	-92
	.word	4
	.word	_Label_589
	.word	-96
	.word	4
	.word	_Label_590
	.word	-100
	.word	4
	.word	_Label_591
	.word	-104
	.word	4
	.word	_Label_592
	.word	-108
	.word	4
	.word	_Label_593
	.word	-112
	.word	4
	.word	_Label_594
	.word	-116
	.word	4
	.word	_Label_595
	.word	-120
	.word	4
	.word	_Label_596
	.word	-124
	.word	4
	.word	_Label_597
	.word	-128
	.word	4
	.word	_Label_598
	.word	-132
	.word	4
	.word	_Label_599
	.word	-136
	.word	4
	.word	_Label_600
	.word	-160
	.word	24
	.word	_Label_601
	.word	-164
	.word	4
	.word	_Label_602
	.word	-168
	.word	4
	.word	_Label_603
	.word	-172
	.word	4
	.word	_Label_604
	.word	-176
	.word	4
	.word	_Label_605
	.word	-180
	.word	4
	.word	_Label_606
	.word	-184
	.word	4
	.word	_Label_607
	.word	-276
	.word	92
	.word	_Label_608
	.word	-280
	.word	4
	.word	_Label_609
	.word	-304
	.word	24
	.word	0
_Label_566:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_567:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_602:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_604:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_605:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_606:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_607:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_608:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_609:
	.byte	'A'
	.ascii	"fileBuffer\0"
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
	mov	31,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1925,r13		! source line 1925
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   _temp_610 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_612 = &_temp_611
	add	r14,-84,r1
	store	r1,[r14+-60]
!   _temp_612 = _temp_612 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	20,r1
	store	r1,[r14+-56]
_Label_614:
!   Data Move: *_temp_612 = 48  (sizeInBytes=1)
	mov	48,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_612 = _temp_612 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_613 = _temp_613 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_613) then goto _Label_614
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_614
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-84]
!   _temp_615 = &_temp_611
	add	r14,-84,r1
	store	r1,[r14+-52]
!   make sure array has size 20
	load	[r14+-88],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3081
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3081:
!   make sure array has size 20
	load	[r14+-52],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_610 = *_temp_615  (sizeInBytes=24)
	load	[r14+-52],r5
	load	[r14+-88],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_616 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-48]
!   _temp_617 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_618 = *_temp_619  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_618) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _temp_618 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_616  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_617  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_622		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_622
!	jmp	_Label_621
_Label_621:
! THEN...
	mov	1940,r13		! source line 1940
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_622:
! CALL STATEMENT...
!   _temp_623 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_624 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_625 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_626 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_627 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_628
	.word	4		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_629
	.word	8
	.word	4
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	_Label_635
	.word	-32
	.word	4
	.word	_Label_636
	.word	-36
	.word	4
	.word	_Label_637
	.word	-40
	.word	4
	.word	_Label_638
	.word	-44
	.word	4
	.word	_Label_639
	.word	-48
	.word	4
	.word	_Label_640
	.word	-52
	.word	4
	.word	_Label_641
	.word	-56
	.word	4
	.word	_Label_642
	.word	-60
	.word	4
	.word	_Label_643
	.word	-84
	.word	24
	.word	_Label_644
	.word	-88
	.word	4
	.word	_Label_645
	.word	-92
	.word	4
	.word	_Label_646
	.word	-116
	.word	24
	.word	0
_Label_628:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_646:
	.byte	'A'
	.ascii	"fileBuffer\0"
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
	mov	31,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1956,r13		! source line 1956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   _temp_647 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_649 = &_temp_648
	add	r14,-84,r1
	store	r1,[r14+-60]
!   _temp_649 = _temp_649 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	20,r1
	store	r1,[r14+-56]
_Label_651:
!   Data Move: *_temp_649 = 48  (sizeInBytes=1)
	mov	48,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_649 = _temp_649 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_650 = _temp_650 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_650) then goto _Label_651
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_651
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-84]
!   _temp_652 = &_temp_648
	add	r14,-84,r1
	store	r1,[r14+-52]
!   make sure array has size 20
	load	[r14+-88],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3083
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3083:
!   make sure array has size 20
	load	[r14+-52],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_647 = *_temp_652  (sizeInBytes=24)
	load	[r14+-52],r5
	load	[r14+-88],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
	mov	1963,r13		! source line 1963
	mov	"\0\0SE",r10
!   _temp_653 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-48]
!   _temp_654 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_655 = *_temp_656  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_655) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = _temp_655 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_653  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_654  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_659		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_659
!	jmp	_Label_658
_Label_658:
! THEN...
	mov	1967,r13		! source line 1967
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_659:
! CALL STATEMENT...
!   _temp_660 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_661 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_662 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_663 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = &fileBuffer
	add	r14,-116,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_665
	.word	4		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_666
	.word	8
	.word	4
	.word	_Label_667
	.word	-12
	.word	4
	.word	_Label_668
	.word	-16
	.word	4
	.word	_Label_669
	.word	-20
	.word	4
	.word	_Label_670
	.word	-24
	.word	4
	.word	_Label_671
	.word	-28
	.word	4
	.word	_Label_672
	.word	-32
	.word	4
	.word	_Label_673
	.word	-36
	.word	4
	.word	_Label_674
	.word	-40
	.word	4
	.word	_Label_675
	.word	-44
	.word	4
	.word	_Label_676
	.word	-48
	.word	4
	.word	_Label_677
	.word	-52
	.word	4
	.word	_Label_678
	.word	-56
	.word	4
	.word	_Label_679
	.word	-60
	.word	4
	.word	_Label_680
	.word	-84
	.word	24
	.word	_Label_681
	.word	-88
	.word	4
	.word	_Label_682
	.word	-92
	.word	4
	.word	_Label_683
	.word	-116
	.word	24
	.word	0
_Label_665:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_683:
	.byte	'A'
	.ascii	"fileBuffer\0"
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
	mov	6,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1983,r13		! source line 1983
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_684 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_685 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_686 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_687 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_688 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_689
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_690
	.word	8
	.word	4
	.word	_Label_691
	.word	12
	.word	4
	.word	_Label_692
	.word	16
	.word	4
	.word	_Label_693
	.word	-12
	.word	4
	.word	_Label_694
	.word	-16
	.word	4
	.word	_Label_695
	.word	-20
	.word	4
	.word	_Label_696
	.word	-24
	.word	4
	.word	_Label_697
	.word	-28
	.word	4
	.word	0
_Label_689:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_691:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_684\0"
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
	mov	6,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	2000,r13		! source line 2000
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_698 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_699 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_700 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_702 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_703
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_704
	.word	8
	.word	4
	.word	_Label_705
	.word	12
	.word	4
	.word	_Label_706
	.word	16
	.word	4
	.word	_Label_707
	.word	-12
	.word	4
	.word	_Label_708
	.word	-16
	.word	4
	.word	_Label_709
	.word	-20
	.word	4
	.word	_Label_710
	.word	-24
	.word	4
	.word	_Label_711
	.word	-28
	.word	4
	.word	0
_Label_703:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_704:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_705:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_698\0"
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
	mov	4,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_712 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_713 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_714 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_715
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_716
	.word	8
	.word	4
	.word	_Label_717
	.word	12
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	0
_Label_715:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_712\0"
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
	mov	3,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	2031,r13		! source line 2031
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_721 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_722 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_723
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_724
	.word	8
	.word	4
	.word	_Label_725
	.word	-12
	.word	4
	.word	_Label_726
	.word	-16
	.word	4
	.word	0
_Label_723:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_724:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	2626,r13		! source line 2626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_727 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_727  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   _temp_728 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_728) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_729 = *_temp_730  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_728 = _temp_729  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   _temp_731 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_731) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_732 = *_temp_733  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_731 = _temp_732  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   _temp_734 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_736 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_736) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_735 = *_temp_736  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_734 = _temp_735  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_737
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_738
	.word	8
	.word	4
	.word	_Label_739
	.word	12
	.word	4
	.word	_Label_740
	.word	-16
	.word	4
	.word	_Label_741
	.word	-9
	.word	1
	.word	_Label_742
	.word	-20
	.word	4
	.word	_Label_743
	.word	-24
	.word	4
	.word	_Label_744
	.word	-10
	.word	1
	.word	_Label_745
	.word	-28
	.word	4
	.word	_Label_746
	.word	-32
	.word	4
	.word	_Label_747
	.word	-11
	.word	1
	.word	_Label_748
	.word	-36
	.word	4
	.word	_Label_749
	.word	-12
	.word	1
	.word	_Label_750
	.word	-40
	.word	4
	.word	_Label_751
	.word	-44
	.word	4
	.word	0
_Label_737:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_738:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_741:
	.byte	'C'
	.ascii	"_temp_735\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_744:
	.byte	'C'
	.ascii	"_temp_732\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_747:
	.byte	'C'
	.ascii	"_temp_729\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_749:
	.byte	'C'
	.ascii	"_temp_727\0"
	.align
_Label_750:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_751:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	2636,r13		! source line 2636
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_753 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_752 = *_temp_753  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_754
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_755
	.word	8
	.word	4
	.word	_Label_756
	.word	-12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	0
_Label_754:
	.ascii	"printFCB\0"
	.align
_Label_755:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	2641,r13		! source line 2641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_758 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_759 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_760 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_761
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_762
	.word	8
	.word	4
	.word	_Label_763
	.word	-12
	.word	4
	.word	_Label_764
	.word	-16
	.word	4
	.word	_Label_765
	.word	-20
	.word	4
	.word	0
_Label_761:
	.ascii	"printOpen\0"
	.align
_Label_762:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	2906,r13		! source line 2906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
!   _temp_766 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=firstProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   if intIsZero (firstProcess) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_767 = firstProcess + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_768 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_767 = _temp_768  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
!   _temp_769 = _function_209_StartUserProcess
	set	_function_209_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (firstProcess) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_769  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_770
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_771
	.word	-12
	.word	4
	.word	_Label_772
	.word	-16
	.word	4
	.word	_Label_773
	.word	-20
	.word	4
	.word	_Label_774
	.word	-24
	.word	4
	.word	_Label_775
	.word	-28
	.word	4
	.word	0
_Label_770:
	.ascii	"InitFirstProcess\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_775:
	.byte	'P'
	.ascii	"firstProcess\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_209_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_StartUserProcess,r1
	push	r1
	mov	29,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	2915,r13		! source line 2915
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   Send message GetANewProcess
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = pcb + 24
	load	[r14+-100],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_777 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-84],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_778 = pcb  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
!   _temp_779 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-76]
!   _temp_780 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_779  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_781
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_781
	jmp	_Label_782
_Label_781:
! THEN...
	mov	2930,r13		! source line 2930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_783 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2930,r13		! source line 2930
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_782:
! ASSIGNMENT STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0AS",r10
	mov	2933,r13		! source line 2933
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = pcb + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_784 = _temp_785		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_784  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_787		(int)
	load	[r14+-96],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_787
!	jmp	_Label_786
_Label_786:
! THEN...
	mov	2936,r13		! source line 2936
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_788 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2936,r13		! source line 2936
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_787:
! SEND STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
!   _temp_789 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_791 = *_temp_792  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_791) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _temp_791 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_794 = _temp_793 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_790 = *_temp_794  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   initUserStackTop = _temp_790 * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_795 [999 ] into _temp_796
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_796		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2957,r13		! source line 2957
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! SEND STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = pcb + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_798 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_799 = initSystemStackTop		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_799  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2963,r13		! source line 2963
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_800
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_801
	.word	8
	.word	4
	.word	_Label_802
	.word	-12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	_Label_804
	.word	-20
	.word	4
	.word	_Label_805
	.word	-24
	.word	4
	.word	_Label_806
	.word	-28
	.word	4
	.word	_Label_807
	.word	-32
	.word	4
	.word	_Label_808
	.word	-36
	.word	4
	.word	_Label_809
	.word	-40
	.word	4
	.word	_Label_810
	.word	-44
	.word	4
	.word	_Label_811
	.word	-48
	.word	4
	.word	_Label_812
	.word	-52
	.word	4
	.word	_Label_813
	.word	-56
	.word	4
	.word	_Label_814
	.word	-60
	.word	4
	.word	_Label_815
	.word	-64
	.word	4
	.word	_Label_816
	.word	-68
	.word	4
	.word	_Label_817
	.word	-72
	.word	4
	.word	_Label_818
	.word	-76
	.word	4
	.word	_Label_819
	.word	-80
	.word	4
	.word	_Label_820
	.word	-84
	.word	4
	.word	_Label_821
	.word	-88
	.word	4
	.word	_Label_822
	.word	-92
	.word	4
	.word	_Label_823
	.word	-96
	.word	4
	.word	_Label_824
	.word	-100
	.word	4
	.word	_Label_825
	.word	-104
	.word	4
	.word	_Label_826
	.word	-108
	.word	4
	.word	_Label_827
	.word	-112
	.word	4
	.word	0
_Label_800:
	.ascii	"StartUserProcess\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_822:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_824:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_825:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_826:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_827:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_828
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_828:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_829
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_829:
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_831		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	242,r13		! source line 242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_831:
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
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
	mov	245,r13		! source line 245
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
	.word	_Label_834
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	12
	.word	4
	.word	_Label_837
	.word	-12
	.word	4
	.word	_Label_838
	.word	-16
	.word	4
	.word	0
_Label_834:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_832\0"
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	250,r13		! source line 250
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	256,r13		! source line 256
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_841 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	256,r13		! source line 256
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_840:
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
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
	mov	259,r13		! source line 259
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	260,r13		! source line 260
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_844 = &waitingThreads
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
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_845 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_846 = &_P_Kernel_readyList
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
_Label_843:
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	264,r13		! source line 264
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
	.word	_Label_847
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_849
	.word	-12
	.word	4
	.word	_Label_850
	.word	-16
	.word	4
	.word	_Label_851
	.word	-20
	.word	4
	.word	_Label_852
	.word	-24
	.word	4
	.word	_Label_853
	.word	-28
	.word	4
	.word	_Label_854
	.word	-32
	.word	4
	.word	0
_Label_847:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_848:
	.ascii	"Pself\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_854:
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	269,r13		! source line 269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_856		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_856
!	jmp	_Label_855
_Label_855:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_857 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	274,r13		! source line 274
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_856:
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
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
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_859
!	jmp	_Label_858
_Label_858:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_860 = &waitingThreads
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
	mov	279,r13		! source line 279
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
_Label_859:
! ASSIGNMENT STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	281,r13		! source line 281
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
	.word	_Label_861
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_863
	.word	-12
	.word	4
	.word	_Label_864
	.word	-16
	.word	4
	.word	_Label_865
	.word	-20
	.word	4
	.word	0
_Label_861:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_862:
	.ascii	"Pself\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_866
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_866:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_867
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_867:
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
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
	mov	305,r13		! source line 305
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
	.word	_Label_869
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_871
	.word	-12
	.word	4
	.word	0
_Label_869:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_870:
	.ascii	"Pself\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_868\0"
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	310,r13		! source line 310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_873		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_873
!	jmp	_Label_872
_Label_872:
! THEN...
	mov	314,r13		! source line 314
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_874 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	314,r13		! source line 314
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_873:
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_878		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_878
!   _temp_877 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_879
_Label_878:
!   _temp_877 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_879:
!   if _temp_877 then goto _Label_876 else goto _Label_875
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_875
	jmp	_Label_876
_Label_875:
! THEN...
	mov	318,r13		! source line 318
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_880
_Label_876:
! ELSE...
	mov	320,r13		! source line 320
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0SE",r10
!   _temp_881 = &waitingThreads
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
	mov	321,r13		! source line 321
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
_Label_880:
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	323,r13		! source line 323
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
	.word	_Label_882
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-9
	.word	1
	.word	_Label_886
	.word	-20
	.word	4
	.word	_Label_887
	.word	-24
	.word	4
	.word	0
_Label_882:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_883:
	.ascii	"Pself\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_885:
	.byte	'C'
	.ascii	"_temp_877\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_887:
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	328,r13		! source line 328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_889		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_889
!	jmp	_Label_888
_Label_888:
! THEN...
	mov	333,r13		! source line 333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_890 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	333,r13		! source line 333
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   _temp_891 = &waitingThreads
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
	mov	337,r13		! source line 337
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_893		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_893
!	jmp	_Label_892
_Label_892:
! THEN...
	mov	338,r13		! source line 338
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_894 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0SE",r10
!   _temp_895 = &_P_Kernel_readyList
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
	mov	340,r13		! source line 340
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_896
_Label_893:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_896:
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	344,r13		! source line 344
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
	.word	_Label_897
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_899
	.word	-12
	.word	4
	.word	_Label_900
	.word	-16
	.word	4
	.word	_Label_901
	.word	-20
	.word	4
	.word	_Label_902
	.word	-24
	.word	4
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-32
	.word	4
	.word	0
_Label_897:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_898:
	.ascii	"Pself\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_904:
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_907		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_907
!	jmp	_Label_906
_Label_906:
!   _temp_905 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_908
_Label_907:
!   _temp_905 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_908:
!   ReturnResult: _temp_905  (sizeInBytes=1)
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
	.word	_Label_909
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	-9
	.word	1
	.word	0
_Label_909:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'C'
	.ascii	"_temp_905\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_912
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_912:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_913
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_913:
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	390,r13		! source line 390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
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
	mov	391,r13		! source line 391
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
	.word	_Label_915
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-12
	.word	4
	.word	0
_Label_915:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	396,r13		! source line 396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
	mov	399,r13		! source line 399
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
!   Retrieve Result: targetName=_temp_920  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_920 then goto _Label_919 else goto _Label_918
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_918
	jmp	_Label_919
_Label_918:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_921 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_921  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	400,r13		! source line 400
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_919:
! ASSIGNMENT STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	403,r13		! source line 403
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
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   _temp_922 = &waitingThreads
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
	mov	405,r13		! source line 405
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
	mov	406,r13		! source line 406
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
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	407,r13		! source line 407
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
	.word	_Label_923
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_925
	.word	12
	.word	4
	.word	_Label_926
	.word	-16
	.word	4
	.word	_Label_927
	.word	-20
	.word	4
	.word	_Label_928
	.word	-9
	.word	1
	.word	_Label_929
	.word	-24
	.word	4
	.word	0
_Label_923:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_924:
	.ascii	"Pself\0"
	.align
_Label_925:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_928:
	.byte	'C'
	.ascii	"_temp_920\0"
	.align
_Label_929:
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	412,r13		! source line 412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0IF",r10
	mov	416,r13		! source line 416
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
!   Retrieve Result: targetName=_temp_932  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_932 then goto _Label_931 else goto _Label_930
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_930
	jmp	_Label_931
_Label_930:
! THEN...
	mov	417,r13		! source line 417
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_933 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	417,r13		! source line 417
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
	mov	420,r13		! source line 420
	mov	"\0\0SE",r10
!   _temp_934 = &waitingThreads
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
	mov	421,r13		! source line 421
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_936		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_936
!	jmp	_Label_935
_Label_935:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_937 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0SE",r10
!   _temp_938 = &_P_Kernel_readyList
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
_Label_936:
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	425,r13		! source line 425
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
	.word	_Label_939
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_941
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	0
_Label_939:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_940:
	.ascii	"Pself\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_946:
	.byte	'C'
	.ascii	"_temp_932\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_948:
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	430,r13		! source line 430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
	mov	434,r13		! source line 434
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
!   Retrieve Result: targetName=_temp_951  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_951 then goto _Label_950 else goto _Label_949
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_950
_Label_949:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_952 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	435,r13		! source line 435
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0WH",r10
_Label_953:
!	jmp	_Label_954
_Label_954:
	mov	438,r13		! source line 438
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_956 = &waitingThreads
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
	mov	440,r13		! source line 440
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_957
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_957
	jmp	_Label_958
_Label_957:
! THEN...
	mov	441,r13		! source line 441
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0BR",r10
	jmp	_Label_955
! END IF...
_Label_958:
! ASSIGNMENT STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_959 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
!   _temp_960 = &_P_Kernel_readyList
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
	jmp	_Label_953
_Label_955:
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	446,r13		! source line 446
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
	.word	_Label_961
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_963
	.word	12
	.word	4
	.word	_Label_964
	.word	-16
	.word	4
	.word	_Label_965
	.word	-20
	.word	4
	.word	_Label_966
	.word	-24
	.word	4
	.word	_Label_967
	.word	-28
	.word	4
	.word	_Label_968
	.word	-9
	.word	1
	.word	_Label_969
	.word	-32
	.word	4
	.word	_Label_970
	.word	-36
	.word	4
	.word	0
_Label_961:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_962:
	.ascii	"Pself\0"
	.align
_Label_963:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_968:
	.byte	'C'
	.ascii	"_temp_951\0"
	.align
_Label_969:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_970:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_971
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_3	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_2	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_971:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_972
	.word	_sourceFileName
	.word	164		! line number
	.word	36		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_972:
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	458,r13		! source line 458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
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
	mov	459,r13		! source line 459
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
	.word	_Label_974
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_975
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_976
	.word	-12
	.word	4
	.word	0
_Label_974:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_975:
	.ascii	"Pself\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_973\0"
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	465,r13		! source line 465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
	mov	471,r13		! source line 471
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
!   Retrieve Result: targetName=_temp_979  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_979 then goto _Label_978 else goto _Label_977
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_977
	jmp	_Label_978
_Label_977:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_980 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	472,r13		! source line 472
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_978:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_981 = &waitingThreads
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
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_982 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-24],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_984		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_984
!	jmp	_Label_983
_Label_983:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_985 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0SE",r10
!   _temp_986 = &_P_Kernel_readyList
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
_Label_984:
! SEND STATEMENT...
	mov	481,r13		! source line 481
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
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	482,r13		! source line 482
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
	.word	_Label_987
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_989
	.word	12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	_Label_991
	.word	-20
	.word	4
	.word	_Label_992
	.word	-24
	.word	4
	.word	_Label_993
	.word	-28
	.word	4
	.word	_Label_994
	.word	-32
	.word	4
	.word	_Label_995
	.word	-9
	.word	1
	.word	_Label_996
	.word	-36
	.word	4
	.word	_Label_997
	.word	-40
	.word	4
	.word	0
_Label_987:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_988:
	.ascii	"Pself\0"
	.align
_Label_989:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_995:
	.byte	'C'
	.ascii	"_temp_979\0"
	.align
_Label_996:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_997:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	487,r13		! source line 487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0IF",r10
	mov	491,r13		! source line 491
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
!   Retrieve Result: targetName=_temp_1000  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1000 then goto _Label_999 else goto _Label_998
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_998
	jmp	_Label_999
_Label_998:
! THEN...
	mov	492,r13		! source line 492
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1001 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	492,r13		! source line 492
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_999:
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	495,r13		! source line 495
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
	mov	496,r13		! source line 496
	mov	"\0\0SE",r10
!   _temp_1002 = &waitingThreads
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
	mov	497,r13		! source line 497
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
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	501,r13		! source line 501
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
	.word	_Label_1003
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1005
	.word	12
	.word	4
	.word	_Label_1006
	.word	-16
	.word	4
	.word	_Label_1007
	.word	-20
	.word	4
	.word	_Label_1008
	.word	-9
	.word	1
	.word	_Label_1009
	.word	-24
	.word	4
	.word	0
_Label_1003:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1004:
	.ascii	"Pself\0"
	.align
_Label_1005:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1008:
	.byte	'C'
	.ascii	"_temp_1000\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1010
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
_Label_1010:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1011
	.word	_sourceFileName
	.word	177		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1011:
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	514,r13		! source line 514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   _temp_1012 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1012) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1012 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   _temp_1013 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1013 [0 ] into _temp_1014
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
!   Data Move: *_temp_1014 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   _temp_1015 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1015 [999 ] into _temp_1016
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
!   Data Move: *_temp_1016 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   _temp_1017 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1017 [999 ] into _temp_1018
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
!   stackTop = _temp_1018		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   _temp_1019 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1021 = &_temp_1020
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1021 = _temp_1021 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1023:
!   Data Move: *_temp_1021 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1021 = _temp_1021 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1022 = _temp_1022 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1022) then goto _Label_1023
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1023
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1024 = &_temp_1020
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3108
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3108:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1019 = *_temp_1024  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3109:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3109
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   _temp_1025 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1027 = &_temp_1026
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1027 = _temp_1027 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1029:
!   Data Move: *_temp_1027 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1027 = _temp_1027 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1028 = _temp_1028 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1028) then goto _Label_1029
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1029
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1030 = &_temp_1026
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3110
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3110:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1025 = *_temp_1030  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3111:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3111
! RETURN STATEMENT...
	mov	528,r13		! source line 528
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
	.word	_Label_1031
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1033
	.word	12
	.word	4
	.word	_Label_1034
	.word	-12
	.word	4
	.word	_Label_1035
	.word	-16
	.word	4
	.word	_Label_1036
	.word	-20
	.word	4
	.word	_Label_1037
	.word	-84
	.word	64
	.word	_Label_1038
	.word	-88
	.word	4
	.word	_Label_1039
	.word	-92
	.word	4
	.word	_Label_1040
	.word	-96
	.word	4
	.word	_Label_1041
	.word	-100
	.word	4
	.word	_Label_1042
	.word	-156
	.word	56
	.word	_Label_1043
	.word	-160
	.word	4
	.word	_Label_1044
	.word	-164
	.word	4
	.word	_Label_1045
	.word	-168
	.word	4
	.word	_Label_1046
	.word	-172
	.word	4
	.word	_Label_1047
	.word	-176
	.word	4
	.word	_Label_1048
	.word	-180
	.word	4
	.word	_Label_1049
	.word	-184
	.word	4
	.word	_Label_1050
	.word	-188
	.word	4
	.word	0
_Label_1031:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1032:
	.ascii	"Pself\0"
	.align
_Label_1033:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1012\0"
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	533,r13		! source line 533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
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
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1051 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1051  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1053 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1052  sizeInBytes=4
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
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	552,r13		! source line 552
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
	.word	_Label_1054
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1055
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1056
	.word	12
	.word	4
	.word	_Label_1057
	.word	16
	.word	4
	.word	_Label_1058
	.word	-12
	.word	4
	.word	_Label_1059
	.word	-16
	.word	4
	.word	_Label_1060
	.word	-20
	.word	4
	.word	_Label_1061
	.word	-24
	.word	4
	.word	_Label_1062
	.word	-28
	.word	4
	.word	0
_Label_1054:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1055:
	.ascii	"Pself\0"
	.align
_Label_1056:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1061:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1062:
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	557,r13		! source line 557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1065 == _P_Kernel_currentThread then goto _Label_1064		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1064
!	jmp	_Label_1063
_Label_1063:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1066 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1064:
! ASSIGNMENT STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
	mov	580,r13		! source line 580
	mov	"\0\0SE",r10
!   _temp_1067 = &_P_Kernel_readyList
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
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1069		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1069
!	jmp	_Label_1068
_Label_1068:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1071		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1071
!	jmp	_Label_1070
_Label_1070:
! THEN...
	mov	586,r13		! source line 586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1072 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	586,r13		! source line 586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1071:
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1074 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1073  sizeInBytes=4
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
	mov	590,r13		! source line 590
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1069:
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	592,r13		! source line 592
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
	.word	_Label_1075
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1077
	.word	-12
	.word	4
	.word	_Label_1078
	.word	-16
	.word	4
	.word	_Label_1079
	.word	-20
	.word	4
	.word	_Label_1080
	.word	-24
	.word	4
	.word	_Label_1081
	.word	-28
	.word	4
	.word	_Label_1082
	.word	-32
	.word	4
	.word	_Label_1083
	.word	-36
	.word	4
	.word	_Label_1084
	.word	-40
	.word	4
	.word	_Label_1085
	.word	-44
	.word	4
	.word	0
_Label_1075:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1076:
	.ascii	"Pself\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1084:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1085:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	597,r13		! source line 597
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1087		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1087
!	jmp	_Label_1086
_Label_1086:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1088 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	610,r13		! source line 610
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1087:
! IF STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1091 == _P_Kernel_currentThread then goto _Label_1090		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1090
!	jmp	_Label_1089
_Label_1089:
! THEN...
	mov	614,r13		! source line 614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1092 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	614,r13		! source line 614
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1090:
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0AS",r10
	mov	620,r13		! source line 620
	mov	"\0\0SE",r10
!   _temp_1093 = &_P_Kernel_readyList
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
	mov	621,r13		! source line 621
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1094
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1094
	jmp	_Label_1095
_Label_1094:
! THEN...
	mov	622,r13		! source line 622
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1096 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	622,r13		! source line 622
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1095:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	624,r13		! source line 624
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
	.word	_Label_1097
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1099
	.word	-12
	.word	4
	.word	_Label_1100
	.word	-16
	.word	4
	.word	_Label_1101
	.word	-20
	.word	4
	.word	_Label_1102
	.word	-24
	.word	4
	.word	_Label_1103
	.word	-28
	.word	4
	.word	_Label_1104
	.word	-32
	.word	4
	.word	0
_Label_1097:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1098:
	.ascii	"Pself\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1104:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	629,r13		! source line 629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0IF",r10
!   _temp_1108 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1108 [0 ] into _temp_1109
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
!   Data Move: _temp_1107 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1107 == 606348324 then goto _Label_1106		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	636,r13		! source line 636
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1110 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	636,r13		! source line 636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1111
_Label_1106:
! ELSE...
	mov	637,r13		! source line 637
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0IF",r10
!   _temp_1115 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1115 [999 ] into _temp_1116
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
!   Data Move: _temp_1114 = *_temp_1116  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1114 == 606348324 then goto _Label_1113		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1113
!	jmp	_Label_1112
_Label_1112:
! THEN...
	mov	638,r13		! source line 638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1117 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	638,r13		! source line 638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1113:
! END IF...
_Label_1111:
! RETURN STATEMENT...
	mov	635,r13		! source line 635
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
	.word	_Label_1118
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1120
	.word	-12
	.word	4
	.word	_Label_1121
	.word	-16
	.word	4
	.word	_Label_1122
	.word	-20
	.word	4
	.word	_Label_1123
	.word	-24
	.word	4
	.word	_Label_1124
	.word	-28
	.word	4
	.word	_Label_1125
	.word	-32
	.word	4
	.word	_Label_1126
	.word	-36
	.word	4
	.word	_Label_1127
	.word	-40
	.word	4
	.word	0
_Label_1118:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1119:
	.ascii	"Pself\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1107\0"
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	644,r13		! source line 644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1128 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1129 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1131 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1132 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1137 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1138 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1137  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1133:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1138 then goto _Label_1136		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1136
_Label_1134:
	mov	657,r13		! source line 657
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1139 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1140 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1141 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1143 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1143 [i ] into _temp_1144
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
!   Data Move: _temp_1142 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1145 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1147 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1147 [i ] into _temp_1148
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
!   Data Move: _temp_1146 = *_temp_1148  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1149 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1135:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1133
! END FOR
_Label_1136:
! CALL STATEMENT...
!   _temp_1150 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-116]
!   _temp_1151 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1151  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1152 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-108]
!   _temp_1154 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1154 [0 ] into _temp_1155
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
!   _temp_1153 = _temp_1155		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1153  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	668,r13		! source line 668
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1158
	cmp	r1,2
	be	_Label_1159
	cmp	r1,3
	be	_Label_1160
	cmp	r1,4
	be	_Label_1161
	cmp	r1,5
	be	_Label_1162
	jmp	_Label_1156
! CASE 1...
_Label_1158:
! CALL STATEMENT...
!   _temp_1163 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_1157
! CASE 2...
_Label_1159:
! CALL STATEMENT...
!   _temp_1164 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0BR",r10
	jmp	_Label_1157
! CASE 3...
_Label_1160:
! CALL STATEMENT...
!   _temp_1165 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0BR",r10
	jmp	_Label_1157
! CASE 4...
_Label_1161:
! CALL STATEMENT...
!   _temp_1166 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0BR",r10
	jmp	_Label_1157
! CASE 5...
_Label_1162:
! CALL STATEMENT...
!   _temp_1167 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0BR",r10
	jmp	_Label_1157
! DEFAULT CASE...
_Label_1156:
! CALL STATEMENT...
!   _temp_1168 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	685,r13		! source line 685
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1157:
! CALL STATEMENT...
!   _temp_1169 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1170 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1175 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1176 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1175  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1171:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1176 then goto _Label_1174		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1174
_Label_1172:
	mov	691,r13		! source line 691
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1177 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1178 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1179 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1181 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1181 [i ] into _temp_1182
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
!   Data Move: _temp_1180 = *_temp_1182  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1183 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1185 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1185 [i ] into _temp_1186
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
!   Data Move: _temp_1184 = *_temp_1186  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1187 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1173:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1171
! END FOR
_Label_1174:
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	700,r13		! source line 700
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
	.word	_Label_1188
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1190
	.word	-12
	.word	4
	.word	_Label_1191
	.word	-16
	.word	4
	.word	_Label_1192
	.word	-20
	.word	4
	.word	_Label_1193
	.word	-24
	.word	4
	.word	_Label_1194
	.word	-28
	.word	4
	.word	_Label_1195
	.word	-32
	.word	4
	.word	_Label_1196
	.word	-36
	.word	4
	.word	_Label_1197
	.word	-40
	.word	4
	.word	_Label_1198
	.word	-44
	.word	4
	.word	_Label_1199
	.word	-48
	.word	4
	.word	_Label_1200
	.word	-52
	.word	4
	.word	_Label_1201
	.word	-56
	.word	4
	.word	_Label_1202
	.word	-60
	.word	4
	.word	_Label_1203
	.word	-64
	.word	4
	.word	_Label_1204
	.word	-68
	.word	4
	.word	_Label_1205
	.word	-72
	.word	4
	.word	_Label_1206
	.word	-76
	.word	4
	.word	_Label_1207
	.word	-80
	.word	4
	.word	_Label_1208
	.word	-84
	.word	4
	.word	_Label_1209
	.word	-88
	.word	4
	.word	_Label_1210
	.word	-92
	.word	4
	.word	_Label_1211
	.word	-96
	.word	4
	.word	_Label_1212
	.word	-100
	.word	4
	.word	_Label_1213
	.word	-104
	.word	4
	.word	_Label_1214
	.word	-108
	.word	4
	.word	_Label_1215
	.word	-112
	.word	4
	.word	_Label_1216
	.word	-116
	.word	4
	.word	_Label_1217
	.word	-120
	.word	4
	.word	_Label_1218
	.word	-124
	.word	4
	.word	_Label_1219
	.word	-128
	.word	4
	.word	_Label_1220
	.word	-132
	.word	4
	.word	_Label_1221
	.word	-136
	.word	4
	.word	_Label_1222
	.word	-140
	.word	4
	.word	_Label_1223
	.word	-144
	.word	4
	.word	_Label_1224
	.word	-148
	.word	4
	.word	_Label_1225
	.word	-152
	.word	4
	.word	_Label_1226
	.word	-156
	.word	4
	.word	_Label_1227
	.word	-160
	.word	4
	.word	_Label_1228
	.word	-164
	.word	4
	.word	_Label_1229
	.word	-168
	.word	4
	.word	_Label_1230
	.word	-172
	.word	4
	.word	_Label_1231
	.word	-176
	.word	4
	.word	_Label_1232
	.word	-180
	.word	4
	.word	_Label_1233
	.word	-184
	.word	4
	.word	_Label_1234
	.word	-188
	.word	4
	.word	_Label_1235
	.word	-192
	.word	4
	.word	_Label_1236
	.word	-196
	.word	4
	.word	0
_Label_1188:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1189:
	.ascii	"Pself\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1236:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1237
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1237:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1238
	.word	_sourceFileName
	.word	204		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1238:
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	755,r13		! source line 755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1239 = _StringConst_107
	set	_StringConst_107,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
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
	mov	764,r13		! source line 764
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
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_1242 = &threadManagerLock
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
	mov	766,r13		! source line 766
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_1244 = &aThreadBecameFree
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
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   _temp_1245 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1247 = &_temp_1246
	set	-45880,r1
	add	r14,r1,r1
	store	r1,[r14+-4236]
!   _temp_1247 = _temp_1247 + 4
	load	[r14+-4236],r1
	add	r1,4,r1
	store	r1,[r14+-4236]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1249 = zeros  (sizeInBytes=4164)
	add	r14,-4228,r4
	mov	1041,r3
_Label_3118:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3118
!   _temp_1249 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4228]
	mov	10,r1
	store	r1,[r14+-4232]
_Label_1251:
!   Data Move: *_temp_1247 = _temp_1249  (sizeInBytes=4164)
	add	r14,-4228,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_3119:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3119
!   _temp_1247 = _temp_1247 + 4164
	load	[r14+-4236],r1
	add	r1,4164,r1
	store	r1,[r14+-4236]
!   _temp_1248 = _temp_1248 + -1
	load	[r14+-4232],r1
	add	r1,-1,r1
	store	r1,[r14+-4232]
!   if intNotZero (_temp_1248) then goto _Label_1251
	load	[r14+-4232],r1
	cmp	r1,r0
	bne	_Label_1251
!   Initialize the array size...
	mov	10,r1
	set	-45880,r2
	store	r1,[r14+r2]
!   _temp_1252 = &_temp_1246
	set	-45880,r1
	add	r14,r1,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	set	-45884,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3120
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3120:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1245 = *_temp_1252  (sizeInBytes=41644)
	load	[r14+-60],r5
	set	-45884,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3121:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3121
! FOR STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1257 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1258 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1257  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1253:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1258 then goto _Label_1256		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1256
_Label_1254:
	mov	771,r13		! source line 771
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1259 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-48]
!   _temp_1260 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1260 [i ] into _temp_1261
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
!   Prepare Argument: offset=12  value=_temp_1259  sizeInBytes=4
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
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   _temp_1262 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1262 [i ] into _temp_1263
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
!   _temp_1264 = _temp_1263 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1264 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1266 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1266 [i ] into _temp_1267
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
!   _temp_1265 = _temp_1267		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1268 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1265  sizeInBytes=4
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
_Label_1255:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1253
! END FOR
_Label_1256:
! RETURN STATEMENT...
	mov	771,r13		! source line 771
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
	.word	_Label_1269
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	-12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	_Label_1273
	.word	-20
	.word	4
	.word	_Label_1274
	.word	-24
	.word	4
	.word	_Label_1275
	.word	-28
	.word	4
	.word	_Label_1276
	.word	-32
	.word	4
	.word	_Label_1277
	.word	-36
	.word	4
	.word	_Label_1278
	.word	-40
	.word	4
	.word	_Label_1279
	.word	-44
	.word	4
	.word	_Label_1280
	.word	-48
	.word	4
	.word	_Label_1281
	.word	-52
	.word	4
	.word	_Label_1282
	.word	-56
	.word	4
	.word	_Label_1283
	.word	-60
	.word	4
	.word	_Label_1284
	.word	-64
	.word	4
	.word	_Label_1285
	.word	-4228
	.word	4164
	.word	_Label_1286
	.word	-4232
	.word	4
	.word	_Label_1287
	.word	-4236
	.word	4
	.word	_Label_1288
	.word	-45880
	.word	41644
	.word	_Label_1289
	.word	-45884
	.word	4
	.word	_Label_1290
	.word	-45888
	.word	4
	.word	_Label_1291
	.word	-45892
	.word	4
	.word	_Label_1292
	.word	-45896
	.word	4
	.word	_Label_1293
	.word	-45900
	.word	4
	.word	_Label_1294
	.word	-45904
	.word	4
	.word	_Label_1295
	.word	-45908
	.word	4
	.word	_Label_1296
	.word	-45912
	.word	4
	.word	0
_Label_1269:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1296:
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
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1297 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1302 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1303 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1302  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1298:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1303 then goto _Label_1301		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1301
_Label_1299:
	mov	790,r13		! source line 790
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1305 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1307 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1307 [i ] into _temp_1308
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
!   _temp_1306 = _temp_1308		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1300:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1298
! END FOR
_Label_1301:
! CALL STATEMENT...
!   _temp_1309 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1310 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1311 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	799,r13		! source line 799
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
	.word	_Label_1312
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1314
	.word	-12
	.word	4
	.word	_Label_1315
	.word	-16
	.word	4
	.word	_Label_1316
	.word	-20
	.word	4
	.word	_Label_1317
	.word	-24
	.word	4
	.word	_Label_1318
	.word	-28
	.word	4
	.word	_Label_1319
	.word	-32
	.word	4
	.word	_Label_1320
	.word	-36
	.word	4
	.word	_Label_1321
	.word	-40
	.word	4
	.word	_Label_1322
	.word	-44
	.word	4
	.word	_Label_1323
	.word	-48
	.word	4
	.word	_Label_1324
	.word	-52
	.word	4
	.word	_Label_1325
	.word	-56
	.word	4
	.word	_Label_1326
	.word	-60
	.word	4
	.word	0
_Label_1312:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1313:
	.ascii	"Pself\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1326:
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
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	804,r13		! source line 804
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   newThread = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! SEND STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0SE",r10
!   _temp_1327 = &threadManagerLock
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
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1330 = &freeList
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
!   if result==true then goto _Label_1328 else goto _Label_1329
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1329
	jmp	_Label_1328
_Label_1328:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_1331 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1332 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1331  sizeInBytes=4
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
_Label_1329:
! ASSIGNMENT STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0AS",r10
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_1333 = &freeList
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
	mov	830,r13		! source line 830
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1334 = newThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1334 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0SE",r10
!   _temp_1335 = &threadManagerLock
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
	mov	834,r13		! source line 834
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
	.word	_Label_1336
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1338
	.word	-12
	.word	4
	.word	_Label_1339
	.word	-16
	.word	4
	.word	_Label_1340
	.word	-20
	.word	4
	.word	_Label_1341
	.word	-24
	.word	4
	.word	_Label_1342
	.word	-28
	.word	4
	.word	_Label_1343
	.word	-32
	.word	4
	.word	_Label_1344
	.word	-36
	.word	4
	.word	_Label_1345
	.word	-40
	.word	4
	.word	0
_Label_1336:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1337:
	.ascii	"Pself\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1345:
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
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	839,r13		! source line 839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0SE",r10
!   _temp_1346 = &threadManagerLock
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
	mov	850,r13		! source line 850
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1347 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1347 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_1348 = &freeList
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
	mov	853,r13		! source line 853
	mov	"\0\0SE",r10
!   _temp_1349 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1350 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1349  sizeInBytes=4
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
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_1351 = &threadManagerLock
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
	mov	855,r13		! source line 855
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
	.word	_Label_1352
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1354
	.word	12
	.word	4
	.word	_Label_1355
	.word	-12
	.word	4
	.word	_Label_1356
	.word	-16
	.word	4
	.word	_Label_1357
	.word	-20
	.word	4
	.word	_Label_1358
	.word	-24
	.word	4
	.word	_Label_1359
	.word	-28
	.word	4
	.word	_Label_1360
	.word	-32
	.word	4
	.word	0
_Label_1352:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1353:
	.ascii	"Pself\0"
	.align
_Label_1354:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1361
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1361:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1362
	.word	_sourceFileName
	.word	225		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1362:
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	868,r13		! source line 868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3126:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3126
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_1364 = &addrSpace
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
	mov	872,r13		! source line 872
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
	.word	_Label_1365
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1366
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1367
	.word	-12
	.word	4
	.word	_Label_1368
	.word	-16
	.word	4
	.word	0
_Label_1365:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1366:
	.ascii	"Pself\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1363\0"
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
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	882,r13		! source line 882
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1369) then goto _runtimeErrorNullPointer
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
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_1370 = &addrSpace
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
!   _temp_1371 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	900,r13		! source line 900
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
	.word	_Label_1372
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1374
	.word	-12
	.word	4
	.word	_Label_1375
	.word	-16
	.word	4
	.word	_Label_1376
	.word	-20
	.word	4
	.word	0
_Label_1372:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1373:
	.ascii	"Pself\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1369\0"
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	905,r13		! source line 905
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1377 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1378  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1379 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1380 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1382		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1382
!	jmp	_Label_1381
_Label_1381:
! THEN...
	mov	915,r13		! source line 915
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1383 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1384
_Label_1382:
! ELSE...
	mov	916,r13		! source line 916
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1386		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1386
!	jmp	_Label_1385
_Label_1385:
! THEN...
	mov	917,r13		! source line 917
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1387 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1387  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1388
_Label_1386:
! ELSE...
	mov	918,r13		! source line 918
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1390		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1390
!	jmp	_Label_1389
_Label_1389:
! THEN...
	mov	919,r13		! source line 919
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1391 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1392
_Label_1390:
! ELSE...
	mov	921,r13		! source line 921
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1393 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	921,r13		! source line 921
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1392:
! END IF...
_Label_1388:
! END IF...
_Label_1384:
! CALL STATEMENT...
!   _temp_1394 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1395 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	927,r13		! source line 927
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
	.word	_Label_1396
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1398
	.word	-12
	.word	4
	.word	_Label_1399
	.word	-16
	.word	4
	.word	_Label_1400
	.word	-20
	.word	4
	.word	_Label_1401
	.word	-24
	.word	4
	.word	_Label_1402
	.word	-28
	.word	4
	.word	_Label_1403
	.word	-32
	.word	4
	.word	_Label_1404
	.word	-36
	.word	4
	.word	_Label_1405
	.word	-40
	.word	4
	.word	_Label_1406
	.word	-44
	.word	4
	.word	_Label_1407
	.word	-48
	.word	4
	.word	0
_Label_1396:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1397:
	.ascii	"Pself\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1408
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1408:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1409
	.word	_sourceFileName
	.word	245		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1409:
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	938,r13		! source line 938
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_1411 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
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
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1413 = &aProcessBecameFree
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
	mov	951,r13		! source line 951
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
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1415 = &processManagerLock
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
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   _temp_1417 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1419 = &_temp_1418
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1419 = _temp_1419 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1421 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_3130:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3130
!   _temp_1421 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1423:
!   Data Move: *_temp_1419 = _temp_1421  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_3131:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3131
!   _temp_1419 = _temp_1419 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1420 = _temp_1420 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1420) then goto _Label_1423
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1423
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1424 = &_temp_1418
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3132
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3132:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1417 = *_temp_1424  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_3133:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3133
! FOR STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1429 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1430 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1429  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1425:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1430 then goto _Label_1428		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1428
_Label_1426:
	mov	958,r13		! source line 958
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1431 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1431 [i ] into _temp_1432
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
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1434 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1434 [i ] into _temp_1435
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
!   _temp_1433 = _temp_1435		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1436 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1433  sizeInBytes=4
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
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   _temp_1437 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1437 [i ] into _temp_1438
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
!   _temp_1439 = _temp_1438 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1439 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1427:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1425
! END FOR
_Label_1428:
! RETURN STATEMENT...
	mov	958,r13		! source line 958
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
	.word	_Label_1440
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1442
	.word	-12
	.word	4
	.word	_Label_1443
	.word	-16
	.word	4
	.word	_Label_1444
	.word	-20
	.word	4
	.word	_Label_1445
	.word	-24
	.word	4
	.word	_Label_1446
	.word	-28
	.word	4
	.word	_Label_1447
	.word	-32
	.word	4
	.word	_Label_1448
	.word	-36
	.word	4
	.word	_Label_1449
	.word	-40
	.word	4
	.word	_Label_1450
	.word	-44
	.word	4
	.word	_Label_1451
	.word	-48
	.word	4
	.word	_Label_1452
	.word	-52
	.word	4
	.word	_Label_1453
	.word	-56
	.word	4
	.word	_Label_1454
	.word	-60
	.word	4
	.word	_Label_1455
	.word	-184
	.word	124
	.word	_Label_1456
	.word	-188
	.word	4
	.word	_Label_1457
	.word	-192
	.word	4
	.word	_Label_1458
	.word	-1436
	.word	1244
	.word	_Label_1459
	.word	-1440
	.word	4
	.word	_Label_1460
	.word	-1444
	.word	4
	.word	_Label_1461
	.word	-1448
	.word	4
	.word	_Label_1462
	.word	-1452
	.word	4
	.word	_Label_1463
	.word	-1456
	.word	4
	.word	_Label_1464
	.word	-1460
	.word	4
	.word	_Label_1465
	.word	-1464
	.word	4
	.word	_Label_1466
	.word	-1468
	.word	4
	.word	_Label_1467
	.word	-1472
	.word	4
	.word	0
_Label_1440:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1441:
	.ascii	"Pself\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1439\0"
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
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1467:
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
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	967,r13		! source line 967
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1468 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1473 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1474 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1473  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1469:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1474 then goto _Label_1472		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1472
_Label_1470:
	mov	976,r13		! source line 976
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1475 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	977,r13		! source line 977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1476 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1477 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1477 [i ] into _temp_1478
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
_Label_1471:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1469
! END FOR
_Label_1472:
! CALL STATEMENT...
!   _temp_1479 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1480 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1481 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1480  sizeInBytes=4
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
	mov	984,r13		! source line 984
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	985,r13		! source line 985
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
	.word	_Label_1482
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	-12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	_Label_1486
	.word	-20
	.word	4
	.word	_Label_1487
	.word	-24
	.word	4
	.word	_Label_1488
	.word	-28
	.word	4
	.word	_Label_1489
	.word	-32
	.word	4
	.word	_Label_1490
	.word	-36
	.word	4
	.word	_Label_1491
	.word	-40
	.word	4
	.word	_Label_1492
	.word	-44
	.word	4
	.word	_Label_1493
	.word	-48
	.word	4
	.word	_Label_1494
	.word	-52
	.word	4
	.word	_Label_1495
	.word	-56
	.word	4
	.word	0
_Label_1482:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1495:
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
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	990,r13		! source line 990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1496 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1501 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1502 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1501  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1497:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1502 then goto _Label_1500		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1500
_Label_1498:
	mov	999,r13		! source line 999
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1504 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1504 [i ] into _temp_1505
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
_Label_1499:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1497
! END FOR
_Label_1500:
! CALL STATEMENT...
!   _temp_1506 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1004,r13		! source line 1004
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1507 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1508 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1507  sizeInBytes=4
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
	mov	1006,r13		! source line 1006
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1007,r13		! source line 1007
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
	.word	_Label_1509
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1511
	.word	-12
	.word	4
	.word	_Label_1512
	.word	-16
	.word	4
	.word	_Label_1513
	.word	-20
	.word	4
	.word	_Label_1514
	.word	-24
	.word	4
	.word	_Label_1515
	.word	-28
	.word	4
	.word	_Label_1516
	.word	-32
	.word	4
	.word	_Label_1517
	.word	-36
	.word	4
	.word	_Label_1518
	.word	-40
	.word	4
	.word	_Label_1519
	.word	-44
	.word	4
	.word	_Label_1520
	.word	-48
	.word	4
	.word	_Label_1521
	.word	-52
	.word	4
	.word	0
_Label_1509:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1510:
	.ascii	"Pself\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1520:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1521:
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
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   newProcess = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1522 = &processManagerLock
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
	mov	1031,r13		! source line 1031
	mov	"\0\0IF",r10
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1525 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1523 else goto _Label_1524
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1524
	jmp	_Label_1523
_Label_1523:
! THEN...
	mov	1032,r13		! source line 1032
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1526 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1527 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1526  sizeInBytes=4
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
_Label_1524:
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1528 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1529 = newProcess + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1529 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (newProcess) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1530 = newProcess + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1530 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1531 = &processManagerLock
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
	mov	1045,r13		! source line 1045
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1540
	.word	-36
	.word	4
	.word	_Label_1541
	.word	-40
	.word	4
	.word	_Label_1542
	.word	-44
	.word	4
	.word	0
_Label_1532:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1542:
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
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	1050,r13		! source line 1050
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1543 = &processManagerLock
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
	mov	1057,r13		! source line 1057
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1544 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1544 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1545 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1546 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1547 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1546  sizeInBytes=4
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
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1548 = &processManagerLock
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
	mov	1060,r13		! source line 1060
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
	.word	_Label_1549
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	12
	.word	4
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	0
_Label_1549:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1558
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1558:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1559
	.word	_sourceFileName
	.word	268		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1559:
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
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	1091,r13		! source line 1091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1560 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1560  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1097,r13		! source line 1097
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
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
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1562 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
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
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1564 = &frameManagerLock
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
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1566 = &newFramesAvailable
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
	mov	1110,r13		! source line 1110
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1571 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1572 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1571  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1567:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1572 then goto _Label_1570		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1570
_Label_1568:
	mov	1110,r13		! source line 1110
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1575 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1575) then goto _Label_1574
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1574
!	jmp	_Label_1573
_Label_1573:
! THEN...
	mov	1114,r13		! source line 1114
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1576 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1576  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1114,r13		! source line 1114
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1574:
!   Increment the FOR-LOOP index variable and jump back
_Label_1569:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1567
! END FOR
_Label_1570:
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
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
	.word	_Label_1577
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1578
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1585
	.word	-36
	.word	4
	.word	_Label_1586
	.word	-40
	.word	4
	.word	_Label_1587
	.word	-44
	.word	4
	.word	_Label_1588
	.word	-48
	.word	4
	.word	_Label_1589
	.word	-52
	.word	4
	.word	_Label_1590
	.word	-56
	.word	4
	.word	0
_Label_1577:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1578:
	.ascii	"Pself\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1590:
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
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	1121,r13		! source line 1121
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1591 = &frameManagerLock
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
!   _temp_1592 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1593 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1594 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1594  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1595 = &framesInUse
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
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_1596 = &frameManagerLock
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
	mov	1130,r13		! source line 1130
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
	.word	_Label_1597
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-24
	.word	4
	.word	_Label_1603
	.word	-28
	.word	4
	.word	_Label_1604
	.word	-32
	.word	4
	.word	0
_Label_1597:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1591\0"
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
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	1135,r13		! source line 1135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_1605 = &frameManagerLock
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
	mov	1147,r13		! source line 1147
	mov	"\0\0IF",r10
!   if numberFreeFrames >= 1 then goto _Label_1607		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	1148,r13		! source line 1148
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1608 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1609 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1608  sizeInBytes=4
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
_Label_1607:
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1610 = &framesInUse
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
	mov	1153,r13		! source line 1153
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
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_1611 = &frameManagerLock
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
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   _temp_1612 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1612		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1161,r13		! source line 1161
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
	.word	_Label_1613
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1615
	.word	-12
	.word	4
	.word	_Label_1616
	.word	-16
	.word	4
	.word	_Label_1617
	.word	-20
	.word	4
	.word	_Label_1618
	.word	-24
	.word	4
	.word	_Label_1619
	.word	-28
	.word	4
	.word	_Label_1620
	.word	-32
	.word	4
	.word	_Label_1621
	.word	-36
	.word	4
	.word	_Label_1622
	.word	-40
	.word	4
	.word	0
_Label_1613:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1614:
	.ascii	"Pself\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1621:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1622:
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
	mov	15,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	1166,r13		! source line 1166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1623 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0WH",r10
_Label_1624:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1626		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1626
!	jmp	_Label_1625
_Label_1625:
	mov	1187,r13		! source line 1187
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1627 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1628 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1627  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1624
_Label_1626:
! FOR STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1633 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1634 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1633  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1629:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1634 then goto _Label_1632		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1632
_Label_1630:
	mov	1191,r13		! source line 1191
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1635 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=freeFrame  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   _temp_1636 = freeFrame * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1636		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
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
_Label_1631:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1629
! END FOR
_Label_1632:
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
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
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1637 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_1638 = &frameManagerLock
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
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1639
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1641
	.word	12
	.word	4
	.word	_Label_1642
	.word	16
	.word	4
	.word	_Label_1643
	.word	-12
	.word	4
	.word	_Label_1644
	.word	-16
	.word	4
	.word	_Label_1645
	.word	-20
	.word	4
	.word	_Label_1646
	.word	-24
	.word	4
	.word	_Label_1647
	.word	-28
	.word	4
	.word	_Label_1648
	.word	-32
	.word	4
	.word	_Label_1649
	.word	-36
	.word	4
	.word	_Label_1650
	.word	-40
	.word	4
	.word	_Label_1651
	.word	-44
	.word	4
	.word	_Label_1652
	.word	-48
	.word	4
	.word	_Label_1653
	.word	-52
	.word	4
	.word	_Label_1654
	.word	-56
	.word	4
	.word	0
_Label_1639:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1640:
	.ascii	"Pself\0"
	.align
_Label_1641:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"freeFrame\0"
	.align
_Label_1654:
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
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	1212,r13		! source line 1212
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0IF",r10
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_1658 = &frameManagerLock
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
!   Retrieve Result: targetName=_temp_1657  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1657 then goto _Label_1656 else goto _Label_1655
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1655
	jmp	_Label_1656
_Label_1655:
! THEN...
	mov	1220,r13		! source line 1220
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1659 = &frameManagerLock
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
_Label_1656:
! FOR STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1664 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1667 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1666 = *_temp_1667  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1665 = _temp_1666 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1664  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-68]
_Label_1660:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1665 then goto _Label_1663		
	load	[r14+-68],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1663
_Label_1661:
	mov	1223,r13		! source line 1223
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0AS",r10
	mov	1224,r13		! source line 1224
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
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   _temp_1668 = frameAddr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1668 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1669 = &framesInUse
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
_Label_1662:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_1660
! END FOR
_Label_1663:
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1671 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1670 = *_temp_1671  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1670		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1672 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1673 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1672  sizeInBytes=4
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
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1674 = &frameManagerLock
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
	mov	1237,r13		! source line 1237
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
	.word	_Label_1675
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-32
	.word	4
	.word	_Label_1683
	.word	-36
	.word	4
	.word	_Label_1684
	.word	-40
	.word	4
	.word	_Label_1685
	.word	-44
	.word	4
	.word	_Label_1686
	.word	-48
	.word	4
	.word	_Label_1687
	.word	-52
	.word	4
	.word	_Label_1688
	.word	-56
	.word	4
	.word	_Label_1689
	.word	-60
	.word	4
	.word	_Label_1690
	.word	-64
	.word	4
	.word	_Label_1691
	.word	-9
	.word	1
	.word	_Label_1692
	.word	-68
	.word	4
	.word	_Label_1693
	.word	-72
	.word	4
	.word	_Label_1694
	.word	-76
	.word	4
	.word	0
_Label_1675:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1691:
	.byte	'C'
	.ascii	"_temp_1657\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1695
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
_Label_1695:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1696
	.word	_sourceFileName
	.word	287		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1696:
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
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	1248,r13		! source line 1248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   _temp_1697 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1699 = &_temp_1698
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1699 = _temp_1699 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1701:
!   Data Move: *_temp_1699 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1699 = _temp_1699 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1700 = _temp_1700 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1700) then goto _Label_1701
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1701
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1702 = &_temp_1698
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3144
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3144:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1697 = *_temp_1702  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3145:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3145
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
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
	.word	_Label_1703
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1705
	.word	-12
	.word	4
	.word	_Label_1706
	.word	-16
	.word	4
	.word	_Label_1707
	.word	-20
	.word	4
	.word	_Label_1708
	.word	-104
	.word	84
	.word	_Label_1709
	.word	-108
	.word	4
	.word	0
_Label_1703:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1704:
	.ascii	"Pself\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1697\0"
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1710 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1711 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1716 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1717 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1716  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1712:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1717 then goto _Label_1715		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1715
_Label_1713:
	mov	1265,r13		! source line 1265
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1718 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1720 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1720 [i ] into _temp_1721
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
!   _temp_1719 = _temp_1721		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1722 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1724 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1724 [i ] into _temp_1725
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
!   Data Move: _temp_1723 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1726 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1727 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1728 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1729  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1731 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1735) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1734  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1734) then goto _Label_1733
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1733
!	jmp	_Label_1732
_Label_1732:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1737) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1736  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1738
_Label_1733:
! ELSE...
	mov	1278,r13		! source line 1278
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1739 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1739  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1738:
! CALL STATEMENT...
!   _temp_1740 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0IF",r10
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1743) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1741 else goto _Label_1742
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1742
	jmp	_Label_1741
_Label_1741:
! THEN...
	mov	1282,r13		! source line 1282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1744 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1744  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1745
_Label_1742:
! ELSE...
	mov	1284,r13		! source line 1284
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1746 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1745:
! CALL STATEMENT...
!   _temp_1747 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0IF",r10
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1750) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1748 else goto _Label_1749
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1749
	jmp	_Label_1748
_Label_1748:
! THEN...
	mov	1288,r13		! source line 1288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1751 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1751  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1752
_Label_1749:
! ELSE...
	mov	1290,r13		! source line 1290
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1752:
! CALL STATEMENT...
!   _temp_1754 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0IF",r10
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1757) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1755 else goto _Label_1756
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1756
	jmp	_Label_1755
_Label_1755:
! THEN...
	mov	1294,r13		! source line 1294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1758 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1759
_Label_1756:
! ELSE...
	mov	1296,r13		! source line 1296
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1760 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1760  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1759:
! CALL STATEMENT...
!   _temp_1761 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1761  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0IF",r10
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1764) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1762 else goto _Label_1763
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1763
	jmp	_Label_1762
_Label_1762:
! THEN...
	mov	1300,r13		! source line 1300
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1765 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1766
_Label_1763:
! ELSE...
	mov	1302,r13		! source line 1302
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1767 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1766:
! CALL STATEMENT...
!   Call the function
	mov	1304,r13		! source line 1304
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1714:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1712
! END FOR
_Label_1715:
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
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
	.word	_Label_1768
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1769
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1770
	.word	-12
	.word	4
	.word	_Label_1771
	.word	-16
	.word	4
	.word	_Label_1772
	.word	-20
	.word	4
	.word	_Label_1773
	.word	-24
	.word	4
	.word	_Label_1774
	.word	-28
	.word	4
	.word	_Label_1775
	.word	-32
	.word	4
	.word	_Label_1776
	.word	-36
	.word	4
	.word	_Label_1777
	.word	-40
	.word	4
	.word	_Label_1778
	.word	-44
	.word	4
	.word	_Label_1779
	.word	-48
	.word	4
	.word	_Label_1780
	.word	-52
	.word	4
	.word	_Label_1781
	.word	-56
	.word	4
	.word	_Label_1782
	.word	-60
	.word	4
	.word	_Label_1783
	.word	-64
	.word	4
	.word	_Label_1784
	.word	-68
	.word	4
	.word	_Label_1785
	.word	-72
	.word	4
	.word	_Label_1786
	.word	-76
	.word	4
	.word	_Label_1787
	.word	-80
	.word	4
	.word	_Label_1788
	.word	-84
	.word	4
	.word	_Label_1789
	.word	-88
	.word	4
	.word	_Label_1790
	.word	-92
	.word	4
	.word	_Label_1791
	.word	-96
	.word	4
	.word	_Label_1792
	.word	-100
	.word	4
	.word	_Label_1793
	.word	-104
	.word	4
	.word	_Label_1794
	.word	-108
	.word	4
	.word	_Label_1795
	.word	-112
	.word	4
	.word	_Label_1796
	.word	-116
	.word	4
	.word	_Label_1797
	.word	-120
	.word	4
	.word	_Label_1798
	.word	-124
	.word	4
	.word	_Label_1799
	.word	-128
	.word	4
	.word	_Label_1800
	.word	-132
	.word	4
	.word	_Label_1801
	.word	-136
	.word	4
	.word	_Label_1802
	.word	-140
	.word	4
	.word	_Label_1803
	.word	-144
	.word	4
	.word	_Label_1804
	.word	-148
	.word	4
	.word	_Label_1805
	.word	-152
	.word	4
	.word	_Label_1806
	.word	-156
	.word	4
	.word	_Label_1807
	.word	-160
	.word	4
	.word	_Label_1808
	.word	-164
	.word	4
	.word	_Label_1809
	.word	-168
	.word	4
	.word	0
_Label_1768:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1769:
	.ascii	"Pself\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1809:
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   _temp_1812 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1812 [entry ] into _temp_1813
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
!   Data Move: _temp_1811 = *_temp_1813  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1810 = _temp_1811 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1810  (sizeInBytes=4)
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
	.word	_Label_1814
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1815
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1816
	.word	12
	.word	4
	.word	_Label_1817
	.word	-12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	0
_Label_1814:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1815:
	.ascii	"Pself\0"
	.align
_Label_1816:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1810\0"
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
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0RE",r10
!   _temp_1823 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1823 [entry ] into _temp_1824
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
!   Data Move: _temp_1822 = *_temp_1824  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1821 = _temp_1822 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1821  (sizeInBytes=4)
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
	.word	_Label_1825
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1827
	.word	12
	.word	4
	.word	_Label_1828
	.word	-12
	.word	4
	.word	_Label_1829
	.word	-16
	.word	4
	.word	_Label_1830
	.word	-20
	.word	4
	.word	_Label_1831
	.word	-24
	.word	4
	.word	0
_Label_1825:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1826:
	.ascii	"Pself\0"
	.align
_Label_1827:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1821\0"
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
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_1832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1832 [entry ] into _temp_1833
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
!   _temp_1837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1837 [entry ] into _temp_1838
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
!   Data Move: _temp_1836 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1835 = _temp_1836 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1834 = _temp_1835 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1833 = _temp_1834  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
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
	.word	_Label_1839
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1841
	.word	12
	.word	4
	.word	_Label_1842
	.word	16
	.word	4
	.word	_Label_1843
	.word	-12
	.word	4
	.word	_Label_1844
	.word	-16
	.word	4
	.word	_Label_1845
	.word	-20
	.word	4
	.word	_Label_1846
	.word	-24
	.word	4
	.word	_Label_1847
	.word	-28
	.word	4
	.word	_Label_1848
	.word	-32
	.word	4
	.word	_Label_1849
	.word	-36
	.word	4
	.word	0
_Label_1839:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1840:
	.ascii	"Pself\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1832\0"
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
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_1853 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1853 [entry ] into _temp_1854
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
!   Data Move: _temp_1852 = *_temp_1854  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1851 = _temp_1852 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1851) then goto _Label_1855
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1855
!   _temp_1850 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1856
_Label_1855:
!   _temp_1850 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1856:
!   ReturnResult: _temp_1850  (sizeInBytes=1)
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
	.word	_Label_1857
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1859
	.word	12
	.word	4
	.word	_Label_1860
	.word	-16
	.word	4
	.word	_Label_1861
	.word	-20
	.word	4
	.word	_Label_1862
	.word	-24
	.word	4
	.word	_Label_1863
	.word	-28
	.word	4
	.word	_Label_1864
	.word	-9
	.word	1
	.word	0
_Label_1857:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1858:
	.ascii	"Pself\0"
	.align
_Label_1859:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1864:
	.byte	'C'
	.ascii	"_temp_1850\0"
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
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1868 [entry ] into _temp_1869
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
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1866 = _temp_1867 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1866) then goto _Label_1870
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1870
!   _temp_1865 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1871
_Label_1870:
!   _temp_1865 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1871:
!   ReturnResult: _temp_1865  (sizeInBytes=1)
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
	.word	_Label_1872
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1874
	.word	12
	.word	4
	.word	_Label_1875
	.word	-16
	.word	4
	.word	_Label_1876
	.word	-20
	.word	4
	.word	_Label_1877
	.word	-24
	.word	4
	.word	_Label_1878
	.word	-28
	.word	4
	.word	_Label_1879
	.word	-9
	.word	1
	.word	0
_Label_1872:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1873:
	.ascii	"Pself\0"
	.align
_Label_1874:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1879:
	.byte	'C'
	.ascii	"_temp_1865\0"
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
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0RE",r10
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1883 [entry ] into _temp_1884
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
!   Data Move: _temp_1882 = *_temp_1884  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1881 = _temp_1882 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1881) then goto _Label_1885
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1885
!   _temp_1880 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1886
_Label_1885:
!   _temp_1880 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1886:
!   ReturnResult: _temp_1880  (sizeInBytes=1)
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
	.word	_Label_1887
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1889
	.word	12
	.word	4
	.word	_Label_1890
	.word	-16
	.word	4
	.word	_Label_1891
	.word	-20
	.word	4
	.word	_Label_1892
	.word	-24
	.word	4
	.word	_Label_1893
	.word	-28
	.word	4
	.word	_Label_1894
	.word	-9
	.word	1
	.word	0
_Label_1887:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1888:
	.ascii	"Pself\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1894:
	.byte	'C'
	.ascii	"_temp_1880\0"
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
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1898 [entry ] into _temp_1899
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
!   Data Move: _temp_1897 = *_temp_1899  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1896 = _temp_1897 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1896) then goto _Label_1900
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1900
!   _temp_1895 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1901
_Label_1900:
!   _temp_1895 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1901:
!   ReturnResult: _temp_1895  (sizeInBytes=1)
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
	.word	_Label_1902
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1904
	.word	12
	.word	4
	.word	_Label_1905
	.word	-16
	.word	4
	.word	_Label_1906
	.word	-20
	.word	4
	.word	_Label_1907
	.word	-24
	.word	4
	.word	_Label_1908
	.word	-28
	.word	4
	.word	_Label_1909
	.word	-9
	.word	1
	.word	0
_Label_1902:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1903:
	.ascii	"Pself\0"
	.align
_Label_1904:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1909:
	.byte	'C'
	.ascii	"_temp_1895\0"
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_1910 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1910 [entry ] into _temp_1911
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
!   _temp_1914 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1914 [entry ] into _temp_1915
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
!   Data Move: _temp_1913 = *_temp_1915  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1912 = _temp_1913 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1911 = _temp_1912  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
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
	.word	_Label_1916
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	12
	.word	4
	.word	_Label_1919
	.word	-12
	.word	4
	.word	_Label_1920
	.word	-16
	.word	4
	.word	_Label_1921
	.word	-20
	.word	4
	.word	_Label_1922
	.word	-24
	.word	4
	.word	_Label_1923
	.word	-28
	.word	4
	.word	_Label_1924
	.word	-32
	.word	4
	.word	0
_Label_1916:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1910\0"
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
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1925 [entry ] into _temp_1926
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
!   _temp_1929 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1929 [entry ] into _temp_1930
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
!   Data Move: _temp_1928 = *_temp_1930  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1927 = _temp_1928 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1926 = _temp_1927  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
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
	.word	_Label_1931
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1933
	.word	12
	.word	4
	.word	_Label_1934
	.word	-12
	.word	4
	.word	_Label_1935
	.word	-16
	.word	4
	.word	_Label_1936
	.word	-20
	.word	4
	.word	_Label_1937
	.word	-24
	.word	4
	.word	_Label_1938
	.word	-28
	.word	4
	.word	_Label_1939
	.word	-32
	.word	4
	.word	0
_Label_1931:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1932:
	.ascii	"Pself\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1925\0"
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
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_1940 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1940 [entry ] into _temp_1941
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
!   _temp_1944 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1944 [entry ] into _temp_1945
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
!   Data Move: _temp_1943 = *_temp_1945  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1942 = _temp_1943 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1941 = _temp_1942  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
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
	.word	_Label_1946
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1948
	.word	12
	.word	4
	.word	_Label_1949
	.word	-12
	.word	4
	.word	_Label_1950
	.word	-16
	.word	4
	.word	_Label_1951
	.word	-20
	.word	4
	.word	_Label_1952
	.word	-24
	.word	4
	.word	_Label_1953
	.word	-28
	.word	4
	.word	_Label_1954
	.word	-32
	.word	4
	.word	0
_Label_1946:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1947:
	.ascii	"Pself\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1940\0"
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
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_1955 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1955 [entry ] into _temp_1956
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
!   _temp_1959 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1959 [entry ] into _temp_1960
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
!   Data Move: _temp_1958 = *_temp_1960  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1957 = _temp_1958 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1956 = _temp_1957  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
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
	.word	_Label_1961
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1963
	.word	12
	.word	4
	.word	_Label_1964
	.word	-12
	.word	4
	.word	_Label_1965
	.word	-16
	.word	4
	.word	_Label_1966
	.word	-20
	.word	4
	.word	_Label_1967
	.word	-24
	.word	4
	.word	_Label_1968
	.word	-28
	.word	4
	.word	_Label_1969
	.word	-32
	.word	4
	.word	0
_Label_1961:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1962:
	.ascii	"Pself\0"
	.align
_Label_1963:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1955\0"
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
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_1970 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1970 [entry ] into _temp_1971
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
!   _temp_1974 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1974 [entry ] into _temp_1975
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
!   Data Move: _temp_1973 = *_temp_1975  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1972 = _temp_1973 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1971 = _temp_1972  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
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
	.word	_Label_1976
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1978
	.word	12
	.word	4
	.word	_Label_1979
	.word	-12
	.word	4
	.word	_Label_1980
	.word	-16
	.word	4
	.word	_Label_1981
	.word	-20
	.word	4
	.word	_Label_1982
	.word	-24
	.word	4
	.word	_Label_1983
	.word	-28
	.word	4
	.word	_Label_1984
	.word	-32
	.word	4
	.word	0
_Label_1976:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1977:
	.ascii	"Pself\0"
	.align
_Label_1978:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1970\0"
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
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   _temp_1985 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1985 [entry ] into _temp_1986
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
!   _temp_1989 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1989 [entry ] into _temp_1990
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
!   Data Move: _temp_1988 = *_temp_1990  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1987 = _temp_1988 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1986 = _temp_1987  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
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
	.word	_Label_1991
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1993
	.word	12
	.word	4
	.word	_Label_1994
	.word	-12
	.word	4
	.word	_Label_1995
	.word	-16
	.word	4
	.word	_Label_1996
	.word	-20
	.word	4
	.word	_Label_1997
	.word	-24
	.word	4
	.word	_Label_1998
	.word	-28
	.word	4
	.word	_Label_1999
	.word	-32
	.word	4
	.word	0
_Label_1991:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1992:
	.ascii	"Pself\0"
	.align
_Label_1993:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1985\0"
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
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	1429,r13		! source line 1429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   _temp_2000 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2000 [entry ] into _temp_2001
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
!   _temp_2004 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2004 [entry ] into _temp_2005
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
!   Data Move: _temp_2003 = *_temp_2005  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2002 = _temp_2003 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2001 = _temp_2002  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
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
	.word	_Label_2006
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2008
	.word	12
	.word	4
	.word	_Label_2009
	.word	-12
	.word	4
	.word	_Label_2010
	.word	-16
	.word	4
	.word	_Label_2011
	.word	-20
	.word	4
	.word	_Label_2012
	.word	-24
	.word	4
	.word	_Label_2013
	.word	-28
	.word	4
	.word	_Label_2014
	.word	-32
	.word	4
	.word	0
_Label_2006:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2007:
	.ascii	"Pself\0"
	.align
_Label_2008:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2000\0"
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
_Label_3161:
	push	r0
	sub	r1,1,r1
	bne	_Label_3161
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   _temp_2015 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2015 [entry ] into _temp_2016
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
!   _temp_2019 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2019 [entry ] into _temp_2020
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
!   Data Move: _temp_2018 = *_temp_2020  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2017 = _temp_2018 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2016 = _temp_2017  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
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
	.word	_Label_2021
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2023
	.word	12
	.word	4
	.word	_Label_2024
	.word	-12
	.word	4
	.word	_Label_2025
	.word	-16
	.word	4
	.word	_Label_2026
	.word	-20
	.word	4
	.word	_Label_2027
	.word	-24
	.word	4
	.word	_Label_2028
	.word	-28
	.word	4
	.word	_Label_2029
	.word	-32
	.word	4
	.word	0
_Label_2021:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2022:
	.ascii	"Pself\0"
	.align
_Label_2023:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2015\0"
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
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	1447,r13		! source line 1447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2031 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2031 [0 ] into _temp_2032
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
!   _temp_2030 = _temp_2032		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2033 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2033  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
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
	.word	_Label_2034
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2036
	.word	-12
	.word	4
	.word	_Label_2037
	.word	-16
	.word	4
	.word	_Label_2038
	.word	-20
	.word	4
	.word	_Label_2039
	.word	-24
	.word	4
	.word	0
_Label_2034:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2035:
	.ascii	"Pself\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2030\0"
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
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2040
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2040
	jmp	_Label_2041
_Label_2040:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2042
_Label_2041:
! ELSE...
	mov	1475,r13		! source line 1475
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2044		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2044
!	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2044:
! END IF...
_Label_2042:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
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
	mov	1479,r13		! source line 1479
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
	mov	1482,r13		! source line 1482
	mov	"\0\0WH",r10
_Label_2045:
!	jmp	_Label_2046
_Label_2046:
	mov	1482,r13		! source line 1482
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2049		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2049
!	jmp	_Label_2048
_Label_2048:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2050 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2049:
! IF STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0IF",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2054) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2053  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2053 then goto _Label_2052 else goto _Label_2051
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2051
	jmp	_Label_2052
_Label_2051:
! THEN...
	mov	1488,r13		! source line 1488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1488,r13		! source line 1488
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2052:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2056  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2056 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0WH",r10
_Label_2058:
!   if offset >= 8192 then goto _Label_2060		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2060
!	jmp	_Label_2059
_Label_2059:
	mov	1493,r13		! source line 1493
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2061 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2061  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2063		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2063
!	jmp	_Label_2062
_Label_2062:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2063:
! END WHILE...
	jmp	_Label_2058
_Label_2060:
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2045
_Label_2047:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2064
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	16
	.word	4
	.word	_Label_2068
	.word	20
	.word	4
	.word	_Label_2069
	.word	-9
	.word	1
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-24
	.word	4
	.word	_Label_2073
	.word	-28
	.word	4
	.word	_Label_2074
	.word	-10
	.word	1
	.word	_Label_2075
	.word	-32
	.word	4
	.word	_Label_2076
	.word	-36
	.word	4
	.word	_Label_2077
	.word	-40
	.word	4
	.word	_Label_2078
	.word	-44
	.word	4
	.word	_Label_2079
	.word	-48
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2069:
	.byte	'C'
	.ascii	"_temp_2061\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2074:
	.byte	'C'
	.ascii	"_temp_2053\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2076:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2079:
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
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2080
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2080
	jmp	_Label_2081
_Label_2080:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2082
_Label_2081:
! ELSE...
	mov	1525,r13		! source line 1525
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2084		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2084
!	jmp	_Label_2083
_Label_2083:
! THEN...
	mov	1526,r13		! source line 1526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2084:
! END IF...
_Label_2082:
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
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
	mov	1529,r13		! source line 1529
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
	mov	1530,r13		! source line 1530
	mov	"\0\0WH",r10
_Label_2085:
!	jmp	_Label_2086
_Label_2086:
	mov	1530,r13		! source line 1530
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2091		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2091
	jmp	_Label_2088
_Label_2091:
	mov	1532,r13		! source line 1532
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2093) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2092  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2092 then goto _Label_2090 else goto _Label_2088
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2088
	jmp	_Label_2090
_Label_2090:
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2095) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2094  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2094 then goto _Label_2089 else goto _Label_2088
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2088
	jmp	_Label_2089
_Label_2088:
! THEN...
	mov	1534,r13		! source line 1534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2089:
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2097) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2096  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2096 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0WH",r10
_Label_2098:
!   if offset >= 8192 then goto _Label_2100		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2100
!	jmp	_Label_2099
_Label_2099:
	mov	1537,r13		! source line 1537
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2101 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2101  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2103		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2103
!	jmp	_Label_2102
_Label_2102:
! THEN...
	mov	1544,r13		! source line 1544
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2103:
! END WHILE...
	jmp	_Label_2098
_Label_2100:
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2085
_Label_2087:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2104
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2106
	.word	12
	.word	4
	.word	_Label_2107
	.word	16
	.word	4
	.word	_Label_2108
	.word	20
	.word	4
	.word	_Label_2109
	.word	-9
	.word	1
	.word	_Label_2110
	.word	-16
	.word	4
	.word	_Label_2111
	.word	-20
	.word	4
	.word	_Label_2112
	.word	-24
	.word	4
	.word	_Label_2113
	.word	-10
	.word	1
	.word	_Label_2114
	.word	-28
	.word	4
	.word	_Label_2115
	.word	-11
	.word	1
	.word	_Label_2116
	.word	-32
	.word	4
	.word	_Label_2117
	.word	-36
	.word	4
	.word	_Label_2118
	.word	-40
	.word	4
	.word	_Label_2119
	.word	-44
	.word	4
	.word	0
_Label_2104:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2105:
	.ascii	"Pself\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2108:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2109:
	.byte	'C'
	.ascii	"_temp_2101\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2113:
	.byte	'C'
	.ascii	"_temp_2094\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2115:
	.byte	'C'
	.ascii	"_temp_2092\0"
	.align
_Label_2116:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2119:
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
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0IF",r10
	mov	1578,r13		! source line 1578
	mov	"\0\0SE",r10
!   _temp_2123 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2124) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2123  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2122  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2122 >= 4 then goto _Label_2121		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2121
!	jmp	_Label_2120
_Label_2120:
! THEN...
	mov	1581,r13		! source line 1581
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2121:
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2126		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2126
!	jmp	_Label_2125
_Label_2125:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2126:
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
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
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	mov	1591,r13		! source line 1591
	mov	"\0\0SE",r10
!   _temp_2129 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2128 = _temp_2129 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2130 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2131) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2128  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2130  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2127  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2127  (sizeInBytes=4)
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
	.word	_Label_2132
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2134
	.word	12
	.word	4
	.word	_Label_2135
	.word	16
	.word	4
	.word	_Label_2136
	.word	20
	.word	4
	.word	_Label_2137
	.word	-12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-32
	.word	4
	.word	_Label_2143
	.word	-36
	.word	4
	.word	_Label_2144
	.word	-40
	.word	4
	.word	_Label_2145
	.word	-44
	.word	4
	.word	0
_Label_2132:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2133:
	.ascii	"Pself\0"
	.align
_Label_2134:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2135:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2146
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2146:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2147
	.word	_sourceFileName
	.word	320		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2147:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	2062,r13		! source line 2062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2148 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2148  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2150 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0SE",r10
!   _temp_2152 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2073,r13		! source line 2073
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2153
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	_Label_2159
	.word	-28
	.word	4
	.word	0
_Label_2153:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2154:
	.ascii	"Pself\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	2078,r13		! source line 2078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0SE",r10
!   _temp_2160 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0WH",r10
_Label_2161:
!	jmp	_Label_2162
_Label_2162:
	mov	2092,r13		! source line 2092
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   _temp_2164 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2165) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2164  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   _temp_2166 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2099,r13		! source line 2099
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2175 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2169
	cmp	r1,2
	be	_Label_2170
	cmp	r1,3
	be	_Label_2171
	cmp	r1,4
	be	_Label_2172
	cmp	r1,5
	be	_Label_2173
	cmp	r1,6
	be	_Label_2174
	jmp	_Label_2167
! CASE 1...
_Label_2169:
! SEND STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0SE",r10
!   _temp_2176 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2170:
! CALL STATEMENT...
!   _temp_2177 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2104,r13		! source line 2104
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2171:
! CALL STATEMENT...
!   _temp_2178 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2106,r13		! source line 2106
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2172:
! CALL STATEMENT...
!   _temp_2179 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2179  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2108,r13		! source line 2108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2173:
! BREAK STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0BR",r10
	jmp	_Label_2168
! CASE 6...
_Label_2174:
! CALL STATEMENT...
!   _temp_2180 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2180  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2114,r13		! source line 2114
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2167:
! CALL STATEMENT...
!   _temp_2181 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2116,r13		! source line 2116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2168:
! END WHILE...
	jmp	_Label_2161
_Label_2163:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2182
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	12
	.word	4
	.word	_Label_2185
	.word	16
	.word	4
	.word	_Label_2186
	.word	20
	.word	4
	.word	_Label_2187
	.word	-12
	.word	4
	.word	_Label_2188
	.word	-16
	.word	4
	.word	_Label_2189
	.word	-20
	.word	4
	.word	_Label_2190
	.word	-24
	.word	4
	.word	_Label_2191
	.word	-28
	.word	4
	.word	_Label_2192
	.word	-32
	.word	4
	.word	_Label_2193
	.word	-36
	.word	4
	.word	_Label_2194
	.word	-40
	.word	4
	.word	_Label_2195
	.word	-44
	.word	4
	.word	_Label_2196
	.word	-48
	.word	4
	.word	_Label_2197
	.word	-52
	.word	4
	.word	0
_Label_2182:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2125,r13		! source line 2125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2198
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2200
	.word	12
	.word	4
	.word	_Label_2201
	.word	16
	.word	4
	.word	_Label_2202
	.word	20
	.word	4
	.word	_Label_2203
	.word	24
	.word	4
	.word	0
_Label_2198:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2199:
	.ascii	"Pself\0"
	.align
_Label_2200:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2201:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2202:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2203:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3168:
	push	r0
	sub	r1,1,r1
	bne	_Label_3168
	mov	2151,r13		! source line 2151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_2204 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0WH",r10
_Label_2205:
!	jmp	_Label_2206
_Label_2206:
	mov	2164,r13		! source line 2164
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_2208 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2209) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2208  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2210 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2170,r13		! source line 2170
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2219 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2213
	cmp	r1,2
	be	_Label_2214
	cmp	r1,3
	be	_Label_2215
	cmp	r1,4
	be	_Label_2216
	cmp	r1,5
	be	_Label_2217
	cmp	r1,6
	be	_Label_2218
	jmp	_Label_2211
! CASE 1...
_Label_2213:
! SEND STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   _temp_2220 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2214:
! CALL STATEMENT...
!   _temp_2221 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2221  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2175,r13		! source line 2175
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2215:
! CALL STATEMENT...
!   _temp_2222 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2177,r13		! source line 2177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2216:
! CALL STATEMENT...
!   _temp_2223 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2179,r13		! source line 2179
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2217:
! BREAK STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0BR",r10
	jmp	_Label_2212
! CASE 6...
_Label_2218:
! CALL STATEMENT...
!   _temp_2224 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2185,r13		! source line 2185
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2211:
! CALL STATEMENT...
!   _temp_2225 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2187,r13		! source line 2187
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2212:
! END WHILE...
	jmp	_Label_2205
_Label_2207:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2226
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2228
	.word	12
	.word	4
	.word	_Label_2229
	.word	16
	.word	4
	.word	_Label_2230
	.word	20
	.word	4
	.word	_Label_2231
	.word	-12
	.word	4
	.word	_Label_2232
	.word	-16
	.word	4
	.word	_Label_2233
	.word	-20
	.word	4
	.word	_Label_2234
	.word	-24
	.word	4
	.word	_Label_2235
	.word	-28
	.word	4
	.word	_Label_2236
	.word	-32
	.word	4
	.word	_Label_2237
	.word	-36
	.word	4
	.word	_Label_2238
	.word	-40
	.word	4
	.word	_Label_2239
	.word	-44
	.word	4
	.word	_Label_2240
	.word	-48
	.word	4
	.word	_Label_2241
	.word	-52
	.word	4
	.word	0
_Label_2226:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2227:
	.ascii	"Pself\0"
	.align
_Label_2228:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2229:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2196,r13		! source line 2196
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2242
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2244
	.word	12
	.word	4
	.word	_Label_2245
	.word	16
	.word	4
	.word	_Label_2246
	.word	20
	.word	4
	.word	_Label_2247
	.word	24
	.word	4
	.word	0
_Label_2242:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2243:
	.ascii	"Pself\0"
	.align
_Label_2244:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2245:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2246:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2247:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2248
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2248:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2249
	.word	_sourceFileName
	.word	343		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2249:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	2227,r13		! source line 2227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2250 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2250  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2234,r13		! source line 2234
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2252 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_2255 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   _temp_2256 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2258 = &_temp_2257
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2258 = _temp_2258 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2260 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3170:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3170
!   _temp_2260 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2262:
!   Data Move: *_temp_2258 = _temp_2260  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3171:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3171
!   _temp_2258 = _temp_2258 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2259 = _temp_2259 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2259) then goto _Label_2262
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2262
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2263 = &_temp_2257
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3172
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3172:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2256 = *_temp_2263  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3173:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3173
! FOR STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2268 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2269 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2268  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2264:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2269 then goto _Label_2267		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2267
_Label_2265:
	mov	2244,r13		! source line 2244
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   _temp_2270 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2270 [i ] into _temp_2271
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2272 = _temp_2271 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2272 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2273 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2273 [i ] into _temp_2274
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_2276 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2276 [i ] into _temp_2277
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2275 = _temp_2277		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2278 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2275  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2266:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2264
! END FOR
_Label_2267:
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0SE",r10
!   _temp_2281 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   _temp_2282 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2284 = &_temp_2283
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2284 = _temp_2284 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2286 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3174:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3174
!   _temp_2286 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2288:
!   Data Move: *_temp_2284 = _temp_2286  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3175:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3175
!   _temp_2284 = _temp_2284 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2285 = _temp_2285 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2285) then goto _Label_2288
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2288
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2289 = &_temp_2283
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3176
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3176:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2282 = *_temp_2289  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3177:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3177
! FOR STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2295 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2294  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2295 then goto _Label_2293		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2293
_Label_2291:
	mov	2256,r13		! source line 2256
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   _temp_2296 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2296 [i ] into _temp_2297
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2298 = _temp_2297 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2298 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_2300 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2300 [i ] into _temp_2301
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2299 = _temp_2301		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2302 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2299  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2292:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2290
! END FOR
_Label_2293:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3178:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3178
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   _temp_2304 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2305 = _temp_2304 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2305 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_2306 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
!   _temp_2307 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2308
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2310
	.word	-12
	.word	4
	.word	_Label_2311
	.word	-16
	.word	4
	.word	_Label_2312
	.word	-20
	.word	4
	.word	_Label_2313
	.word	-24
	.word	4
	.word	_Label_2314
	.word	-28
	.word	4
	.word	_Label_2315
	.word	-32
	.word	4
	.word	_Label_2316
	.word	-36
	.word	4
	.word	_Label_2317
	.word	-40
	.word	4
	.word	_Label_2318
	.word	-44
	.word	4
	.word	_Label_2319
	.word	-48
	.word	4
	.word	_Label_2320
	.word	-52
	.word	4
	.word	_Label_2321
	.word	-56
	.word	4
	.word	_Label_2322
	.word	-60
	.word	4
	.word	_Label_2323
	.word	-64
	.word	4
	.word	_Label_2324
	.word	-68
	.word	4
	.word	_Label_2325
	.word	-72
	.word	4
	.word	_Label_2326
	.word	-100
	.word	28
	.word	_Label_2327
	.word	-104
	.word	4
	.word	_Label_2328
	.word	-108
	.word	4
	.word	_Label_2329
	.word	-392
	.word	284
	.word	_Label_2330
	.word	-396
	.word	4
	.word	_Label_2331
	.word	-400
	.word	4
	.word	_Label_2332
	.word	-404
	.word	4
	.word	_Label_2333
	.word	-408
	.word	4
	.word	_Label_2334
	.word	-412
	.word	4
	.word	_Label_2335
	.word	-416
	.word	4
	.word	_Label_2336
	.word	-420
	.word	4
	.word	_Label_2337
	.word	-424
	.word	4
	.word	_Label_2338
	.word	-428
	.word	4
	.word	_Label_2339
	.word	-432
	.word	4
	.word	_Label_2340
	.word	-436
	.word	4
	.word	_Label_2341
	.word	-440
	.word	4
	.word	_Label_2342
	.word	-444
	.word	4
	.word	_Label_2343
	.word	-448
	.word	4
	.word	_Label_2344
	.word	-452
	.word	4
	.word	_Label_2345
	.word	-456
	.word	4
	.word	_Label_2346
	.word	-460
	.word	4
	.word	_Label_2347
	.word	-500
	.word	40
	.word	_Label_2348
	.word	-504
	.word	4
	.word	_Label_2349
	.word	-508
	.word	4
	.word	_Label_2350
	.word	-912
	.word	404
	.word	_Label_2351
	.word	-916
	.word	4
	.word	_Label_2352
	.word	-920
	.word	4
	.word	_Label_2353
	.word	-924
	.word	4
	.word	_Label_2354
	.word	-928
	.word	4
	.word	_Label_2355
	.word	-932
	.word	4
	.word	_Label_2356
	.word	-936
	.word	4
	.word	_Label_2357
	.word	-940
	.word	4
	.word	_Label_2358
	.word	-944
	.word	4
	.word	0
_Label_2308:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2309:
	.ascii	"Pself\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2358:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	2276,r13		! source line 2276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2359 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2360 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2360  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2279,r13		! source line 2279
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2365 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2366 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2365  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2361:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2366 then goto _Label_2364		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2364
_Label_2362:
	mov	2280,r13		! source line 2280
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2367 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2368 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2368  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2283,r13		! source line 2283
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_2369 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2369 [i ] into _temp_2370
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2363:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2361
! END FOR
_Label_2364:
! CALL STATEMENT...
!   _temp_2371 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2286,r13		! source line 2286
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2372 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2373 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2372  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2374 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2374  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2379 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2380 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2379  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2375:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2380 then goto _Label_2378		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2378
_Label_2376:
	mov	2290,r13		! source line 2290
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2381 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2381  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2382 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2293,r13		! source line 2293
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2384 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2384 [i ] into _temp_2385
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2383 = _temp_2385		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2383  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2386 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2386  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2387 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2387 [i ] into _temp_2388
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2377:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2375
! END FOR
_Label_2378:
! CALL STATEMENT...
!   _temp_2389 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2389  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2298,r13		! source line 2298
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2390 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2391 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2390  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2392 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2393
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2395
	.word	-12
	.word	4
	.word	_Label_2396
	.word	-16
	.word	4
	.word	_Label_2397
	.word	-20
	.word	4
	.word	_Label_2398
	.word	-24
	.word	4
	.word	_Label_2399
	.word	-28
	.word	4
	.word	_Label_2400
	.word	-32
	.word	4
	.word	_Label_2401
	.word	-36
	.word	4
	.word	_Label_2402
	.word	-40
	.word	4
	.word	_Label_2403
	.word	-44
	.word	4
	.word	_Label_2404
	.word	-48
	.word	4
	.word	_Label_2405
	.word	-52
	.word	4
	.word	_Label_2406
	.word	-56
	.word	4
	.word	_Label_2407
	.word	-60
	.word	4
	.word	_Label_2408
	.word	-64
	.word	4
	.word	_Label_2409
	.word	-68
	.word	4
	.word	_Label_2410
	.word	-72
	.word	4
	.word	_Label_2411
	.word	-76
	.word	4
	.word	_Label_2412
	.word	-80
	.word	4
	.word	_Label_2413
	.word	-84
	.word	4
	.word	_Label_2414
	.word	-88
	.word	4
	.word	_Label_2415
	.word	-92
	.word	4
	.word	_Label_2416
	.word	-96
	.word	4
	.word	_Label_2417
	.word	-100
	.word	4
	.word	_Label_2418
	.word	-104
	.word	4
	.word	_Label_2419
	.word	-108
	.word	4
	.word	_Label_2420
	.word	-112
	.word	4
	.word	_Label_2421
	.word	-116
	.word	4
	.word	0
_Label_2393:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2394:
	.ascii	"Pself\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3180:
	push	r0
	sub	r1,1,r1
	bne	_Label_3180
	mov	2305,r13		! source line 2305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2422 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2423
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2423
	jmp	_Label_2424
_Label_2423:
! THEN...
	mov	2323,r13		! source line 2323
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2424:
! SEND STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2425 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0WH",r10
_Label_2426:
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2429 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2427 else goto _Label_2428
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2428
	jmp	_Label_2427
_Label_2427:
	mov	2328,r13		! source line 2328
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0SE",r10
!   _temp_2430 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2431 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2430  sizeInBytes=4
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
! END WHILE...
	jmp	_Label_2426
_Label_2428:
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2432 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2433 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2433 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2434 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2434 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2435 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2436 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2341,r13		! source line 2341
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2437
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	12
	.word	4
	.word	_Label_2440
	.word	-12
	.word	4
	.word	_Label_2441
	.word	-16
	.word	4
	.word	_Label_2442
	.word	-20
	.word	4
	.word	_Label_2443
	.word	-24
	.word	4
	.word	_Label_2444
	.word	-28
	.word	4
	.word	_Label_2445
	.word	-32
	.word	4
	.word	_Label_2446
	.word	-36
	.word	4
	.word	_Label_2447
	.word	-40
	.word	4
	.word	_Label_2448
	.word	-44
	.word	4
	.word	_Label_2449
	.word	-48
	.word	4
	.word	_Label_2450
	.word	-52
	.word	4
	.word	_Label_2451
	.word	-56
	.word	4
	.word	0
_Label_2437:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2450:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2451:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
	mov	2346,r13		! source line 2346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2453		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2453
!	jmp	_Label_2452
_Label_2452:
! THEN...
	mov	2377,r13		! source line 2377
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2454 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2377,r13		! source line 2377
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2453:
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0WH",r10
_Label_2455:
!   if numFiles <= 0 then goto _Label_2457		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2457
!	jmp	_Label_2456
_Label_2456:
	mov	2387,r13		! source line 2387
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2458 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2459 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2390,r13		! source line 2390
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2460 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2460  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2392,r13		! source line 2392
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2464 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2464 then goto _Label_2462		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2462
!	jmp	_Label_2463
_Label_2463:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2466
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2465 = _temp_2466		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2465  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2395,r13		! source line 2395
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2461 else goto _Label_2462
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2462
	jmp	_Label_2461
_Label_2461:
! THEN...
	mov	2396,r13		! source line 2396
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0BR",r10
	jmp	_Label_2457
! END IF...
_Label_2462:
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2455
_Label_2457:
! IF STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2468		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2468
!	jmp	_Label_2467
_Label_2467:
! THEN...
	mov	2404,r13		! source line 2404
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2468:
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2469 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2474 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2475 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2474  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2470:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2475 then goto _Label_2473		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2473
_Label_2471:
	mov	2409,r13		! source line 2409
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   _temp_2476 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2476 [i ] into _temp_2477
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2477		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2481 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2480 = *_temp_2481  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2480 != start then goto _Label_2479		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2479
!	jmp	_Label_2478
_Label_2478:
! THEN...
	mov	2412,r13		! source line 2412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2482 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2485 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2484 = *_temp_2485  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2483 = _temp_2484 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2482 = _temp_2483  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2486 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2479:
!   Increment the FOR-LOOP index variable and jump back
_Label_2472:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2470
! END FOR
_Label_2473:
! WHILE STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0WH",r10
_Label_2487:
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2490 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2488 else goto _Label_2489
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2489
	jmp	_Label_2488
_Label_2488:
	mov	2419,r13		! source line 2419
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2491 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2492 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2491  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2487
_Label_2489:
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2493 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0SE",r10
!   _temp_2494 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2495 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2496 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2496 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2497 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2497 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2501 < 0 then goto _Label_2500		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2500
	jmp	_Label_2498
_Label_2500:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2503 ) then goto _Label_2499		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2499
!	jmp	_Label_2498
_Label_2498:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2504 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2432,r13		! source line 2432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2499:
! RETURN STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2505
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2507
	.word	12
	.word	4
	.word	_Label_2508
	.word	-12
	.word	4
	.word	_Label_2509
	.word	-16
	.word	4
	.word	_Label_2510
	.word	-20
	.word	4
	.word	_Label_2511
	.word	-24
	.word	4
	.word	_Label_2512
	.word	-28
	.word	4
	.word	_Label_2513
	.word	-32
	.word	4
	.word	_Label_2514
	.word	-36
	.word	4
	.word	_Label_2515
	.word	-40
	.word	4
	.word	_Label_2516
	.word	-44
	.word	4
	.word	_Label_2517
	.word	-48
	.word	4
	.word	_Label_2518
	.word	-52
	.word	4
	.word	_Label_2519
	.word	-56
	.word	4
	.word	_Label_2520
	.word	-60
	.word	4
	.word	_Label_2521
	.word	-64
	.word	4
	.word	_Label_2522
	.word	-68
	.word	4
	.word	_Label_2523
	.word	-72
	.word	4
	.word	_Label_2524
	.word	-76
	.word	4
	.word	_Label_2525
	.word	-80
	.word	4
	.word	_Label_2526
	.word	-84
	.word	4
	.word	_Label_2527
	.word	-88
	.word	4
	.word	_Label_2528
	.word	-92
	.word	4
	.word	_Label_2529
	.word	-96
	.word	4
	.word	_Label_2530
	.word	-100
	.word	4
	.word	_Label_2531
	.word	-104
	.word	4
	.word	_Label_2532
	.word	-108
	.word	4
	.word	_Label_2533
	.word	-112
	.word	4
	.word	_Label_2534
	.word	-116
	.word	4
	.word	_Label_2535
	.word	-120
	.word	4
	.word	_Label_2536
	.word	-124
	.word	4
	.word	_Label_2537
	.word	-128
	.word	4
	.word	_Label_2538
	.word	-132
	.word	4
	.word	_Label_2539
	.word	-136
	.word	4
	.word	_Label_2540
	.word	-140
	.word	4
	.word	_Label_2541
	.word	-144
	.word	4
	.word	_Label_2542
	.word	-148
	.word	4
	.word	_Label_2543
	.word	-152
	.word	4
	.word	_Label_2544
	.word	-156
	.word	4
	.word	_Label_2545
	.word	-160
	.word	4
	.word	0
_Label_2505:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2506:
	.ascii	"Pself\0"
	.align
_Label_2507:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2540:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2542:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2543:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2544:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2545:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
	mov	2447,r13		! source line 2447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0IF",r10
!   _temp_2548 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2548 then goto _Label_2547		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2547
!	jmp	_Label_2546
_Label_2546:
! THEN...
	mov	2450,r13		! source line 2450
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2547:
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_2549 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2550 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2551 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2551  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2554 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2553 = _temp_2554 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2552 = _temp_2553  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2559 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2558 = *_temp_2559  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2558 > 0 then goto _Label_2557		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2557
!	jmp	_Label_2556
_Label_2556:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2560 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_2561 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2562 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2561  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2563 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2565 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2564 = _temp_2565 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2563 = _temp_2564  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2569 = *_temp_2570  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2569 > 0 then goto _Label_2568		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2568
!	jmp	_Label_2567
_Label_2567:
! THEN...
	mov	2461,r13		! source line 2461
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_2571 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2572 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2573 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2572  sizeInBytes=4
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
! END IF...
_Label_2568:
! END IF...
_Label_2557:
! SEND STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2574 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2465,r13		! source line 2465
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2575
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2577
	.word	12
	.word	4
	.word	_Label_2578
	.word	-12
	.word	4
	.word	_Label_2579
	.word	-16
	.word	4
	.word	_Label_2580
	.word	-20
	.word	4
	.word	_Label_2581
	.word	-24
	.word	4
	.word	_Label_2582
	.word	-28
	.word	4
	.word	_Label_2583
	.word	-32
	.word	4
	.word	_Label_2584
	.word	-36
	.word	4
	.word	_Label_2585
	.word	-40
	.word	4
	.word	_Label_2586
	.word	-44
	.word	4
	.word	_Label_2587
	.word	-48
	.word	4
	.word	_Label_2588
	.word	-52
	.word	4
	.word	_Label_2589
	.word	-56
	.word	4
	.word	_Label_2590
	.word	-60
	.word	4
	.word	_Label_2591
	.word	-64
	.word	4
	.word	_Label_2592
	.word	-68
	.word	4
	.word	_Label_2593
	.word	-72
	.word	4
	.word	_Label_2594
	.word	-76
	.word	4
	.word	_Label_2595
	.word	-80
	.word	4
	.word	_Label_2596
	.word	-84
	.word	4
	.word	_Label_2597
	.word	-88
	.word	4
	.word	_Label_2598
	.word	-92
	.word	4
	.word	_Label_2599
	.word	-96
	.word	4
	.word	_Label_2600
	.word	-100
	.word	4
	.word	_Label_2601
	.word	-104
	.word	4
	.word	0
_Label_2575:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2576:
	.ascii	"Pself\0"
	.align
_Label_2577:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2601:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	2470,r13		! source line 2470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2605 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2604 = *_temp_2605  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2604) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = _temp_2604 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2606 ) then goto _Label_2603		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2603
!	jmp	_Label_2602
_Label_2602:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2610 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2610) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = _temp_2610 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2609 = *_temp_2612  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2609 >= 0 then goto _Label_2608		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2608
!	jmp	_Label_2607
_Label_2607:
! THEN...
	mov	2477,r13		! source line 2477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2613 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2613  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2477,r13		! source line 2477
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2608:
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2614 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2614) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = _temp_2614 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2616 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2619) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = _temp_2619 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2618 = *_temp_2621  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2623 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = _temp_2623 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2622 = *_temp_2625  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2617 = _temp_2618 + _temp_2622		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2628 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2627 = *_temp_2628  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2627) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = _temp_2627 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2626 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2630 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2617  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2626  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2603:
! RETURN STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2631
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2633
	.word	12
	.word	4
	.word	_Label_2634
	.word	-12
	.word	4
	.word	_Label_2635
	.word	-16
	.word	4
	.word	_Label_2636
	.word	-20
	.word	4
	.word	_Label_2637
	.word	-24
	.word	4
	.word	_Label_2638
	.word	-28
	.word	4
	.word	_Label_2639
	.word	-32
	.word	4
	.word	_Label_2640
	.word	-36
	.word	4
	.word	_Label_2641
	.word	-40
	.word	4
	.word	_Label_2642
	.word	-44
	.word	4
	.word	_Label_2643
	.word	-48
	.word	4
	.word	_Label_2644
	.word	-52
	.word	4
	.word	_Label_2645
	.word	-56
	.word	4
	.word	_Label_2646
	.word	-60
	.word	4
	.word	_Label_2647
	.word	-64
	.word	4
	.word	_Label_2648
	.word	-68
	.word	4
	.word	_Label_2649
	.word	-72
	.word	4
	.word	_Label_2650
	.word	-76
	.word	4
	.word	_Label_2651
	.word	-80
	.word	4
	.word	_Label_2652
	.word	-84
	.word	4
	.word	_Label_2653
	.word	-88
	.word	4
	.word	_Label_2654
	.word	-92
	.word	4
	.word	_Label_2655
	.word	-96
	.word	4
	.word	_Label_2656
	.word	-100
	.word	4
	.word	_Label_2657
	.word	-104
	.word	4
	.word	_Label_2658
	.word	-108
	.word	4
	.word	0
_Label_2631:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2632:
	.ascii	"Pself\0"
	.align
_Label_2633:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	2489,r13		! source line 2489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   _temp_2659 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2665		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2665
!   _temp_2664 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2666
_Label_2665:
!   _temp_2664 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2666:
!   if _temp_2664 then goto _Label_2663 else goto _Label_2660
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2660
	jmp	_Label_2663
_Label_2663:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2669 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2668 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2668 == 0 then goto _Label_2670		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2670
!   _temp_2667 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2671
_Label_2670:
!   _temp_2667 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2671:
!   if _temp_2667 then goto _Label_2662 else goto _Label_2660
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2660
	jmp	_Label_2662
_Label_2662:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2674 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2673 = *_temp_2674  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2673) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = _temp_2673 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2672 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2672 >= 0 then goto _Label_2661		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2661
!	jmp	_Label_2660
_Label_2660:
! THEN...
	mov	2506,r13		! source line 2506
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2676 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2506,r13		! source line 2506
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2661:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2677  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0WH",r10
_Label_2678:
!   if numBytes <= 0 then goto _Label_2680		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2680
!	jmp	_Label_2679
_Label_2679:
	mov	2509,r13		! source line 2509
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2683 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2683 == sector then goto _Label_2682		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2682
!	jmp	_Label_2681
_Label_2681:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2685) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2688 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2687 = *_temp_2688  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2686 = sector + _temp_2687		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2690 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2689 = *_temp_2690  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2691 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2686  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2689  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2692 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2693 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2693 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2682:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2694 = *_temp_2695  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2694 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   _temp_2696 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2696  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2537,r13		! source line 2537
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2678
_Label_2680:
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_2697 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2698
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2700
	.word	12
	.word	4
	.word	_Label_2701
	.word	16
	.word	4
	.word	_Label_2702
	.word	20
	.word	4
	.word	_Label_2703
	.word	24
	.word	4
	.word	_Label_2704
	.word	-16
	.word	4
	.word	_Label_2705
	.word	-20
	.word	4
	.word	_Label_2706
	.word	-24
	.word	4
	.word	_Label_2707
	.word	-28
	.word	4
	.word	_Label_2708
	.word	-32
	.word	4
	.word	_Label_2709
	.word	-36
	.word	4
	.word	_Label_2710
	.word	-40
	.word	4
	.word	_Label_2711
	.word	-44
	.word	4
	.word	_Label_2712
	.word	-48
	.word	4
	.word	_Label_2713
	.word	-52
	.word	4
	.word	_Label_2714
	.word	-56
	.word	4
	.word	_Label_2715
	.word	-60
	.word	4
	.word	_Label_2716
	.word	-64
	.word	4
	.word	_Label_2717
	.word	-68
	.word	4
	.word	_Label_2718
	.word	-72
	.word	4
	.word	_Label_2719
	.word	-76
	.word	4
	.word	_Label_2720
	.word	-80
	.word	4
	.word	_Label_2721
	.word	-84
	.word	4
	.word	_Label_2722
	.word	-88
	.word	4
	.word	_Label_2723
	.word	-92
	.word	4
	.word	_Label_2724
	.word	-96
	.word	4
	.word	_Label_2725
	.word	-100
	.word	4
	.word	_Label_2726
	.word	-104
	.word	4
	.word	_Label_2727
	.word	-9
	.word	1
	.word	_Label_2728
	.word	-10
	.word	1
	.word	_Label_2729
	.word	-108
	.word	4
	.word	_Label_2730
	.word	-112
	.word	4
	.word	_Label_2731
	.word	-116
	.word	4
	.word	_Label_2732
	.word	-120
	.word	4
	.word	_Label_2733
	.word	-124
	.word	4
	.word	_Label_2734
	.word	-128
	.word	4
	.word	0
_Label_2698:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2699:
	.ascii	"Pself\0"
	.align
_Label_2700:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2701:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2702:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2727:
	.byte	'C'
	.ascii	"_temp_2667\0"
	.align
_Label_2728:
	.byte	'C'
	.ascii	"_temp_2664\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2730:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2734:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	2553,r13		! source line 2553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_2735 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2741		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2741
!   _temp_2740 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2742
_Label_2741:
!   _temp_2740 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2742:
!   if _temp_2740 then goto _Label_2739 else goto _Label_2736
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2736
	jmp	_Label_2739
_Label_2739:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2744 = *_temp_2745  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2744 == 0 then goto _Label_2746		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2746
!   _temp_2743 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2747
_Label_2746:
!   _temp_2743 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2747:
!   if _temp_2743 then goto _Label_2738 else goto _Label_2736
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2736
	jmp	_Label_2738
_Label_2738:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2750 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2749 = *_temp_2750  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2749) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2751 = _temp_2749 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2748 = *_temp_2751  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2748 >= 0 then goto _Label_2737		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2737
!	jmp	_Label_2736
_Label_2736:
! THEN...
	mov	2571,r13		! source line 2571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2752 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2752  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2571,r13		! source line 2571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2737:
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2753 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2753  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0WH",r10
_Label_2754:
!   if numBytes <= 0 then goto _Label_2756		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2756
!	jmp	_Label_2755
_Label_2755:
	mov	2574,r13		! source line 2574
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2759 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2759 == sector then goto _Label_2758		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2758
!	jmp	_Label_2757
_Label_2757:
! THEN...
	mov	2590,r13		! source line 2590
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2761) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2758:
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2762 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   _temp_2764 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2764  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2767 != sector then goto _Label_2766		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2766
!	jmp	_Label_2765
_Label_2765:
	jmp	_Label_2769
_Label_2766:
! ELSE...
	mov	2596,r13		! source line 2596
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2772
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2772
	jmp	_Label_2771
_Label_2772:
!   if bytesToMove != 8192 then goto _Label_2771		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2771
!	jmp	_Label_2770
_Label_2770:
	jmp	_Label_2773
_Label_2771:
! ELSE...
	mov	2600,r13		! source line 2600
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2775 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2774 = sector + _temp_2775		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2777 = *_temp_2778  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2779 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2774  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2777  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2773:
! END IF...
_Label_2769:
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2780 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2780 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2781 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2781 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2609,r13		! source line 2609
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2754
_Label_2756:
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2782 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2783
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2785
	.word	12
	.word	4
	.word	_Label_2786
	.word	16
	.word	4
	.word	_Label_2787
	.word	20
	.word	4
	.word	_Label_2788
	.word	24
	.word	4
	.word	_Label_2789
	.word	-16
	.word	4
	.word	_Label_2790
	.word	-20
	.word	4
	.word	_Label_2791
	.word	-24
	.word	4
	.word	_Label_2792
	.word	-28
	.word	4
	.word	_Label_2793
	.word	-32
	.word	4
	.word	_Label_2794
	.word	-36
	.word	4
	.word	_Label_2795
	.word	-40
	.word	4
	.word	_Label_2796
	.word	-44
	.word	4
	.word	_Label_2797
	.word	-48
	.word	4
	.word	_Label_2798
	.word	-52
	.word	4
	.word	_Label_2799
	.word	-56
	.word	4
	.word	_Label_2800
	.word	-60
	.word	4
	.word	_Label_2801
	.word	-64
	.word	4
	.word	_Label_2802
	.word	-68
	.word	4
	.word	_Label_2803
	.word	-72
	.word	4
	.word	_Label_2804
	.word	-76
	.word	4
	.word	_Label_2805
	.word	-80
	.word	4
	.word	_Label_2806
	.word	-84
	.word	4
	.word	_Label_2807
	.word	-88
	.word	4
	.word	_Label_2808
	.word	-92
	.word	4
	.word	_Label_2809
	.word	-96
	.word	4
	.word	_Label_2810
	.word	-100
	.word	4
	.word	_Label_2811
	.word	-104
	.word	4
	.word	_Label_2812
	.word	-108
	.word	4
	.word	_Label_2813
	.word	-112
	.word	4
	.word	_Label_2814
	.word	-9
	.word	1
	.word	_Label_2815
	.word	-10
	.word	1
	.word	_Label_2816
	.word	-116
	.word	4
	.word	_Label_2817
	.word	-120
	.word	4
	.word	_Label_2818
	.word	-124
	.word	4
	.word	_Label_2819
	.word	-128
	.word	4
	.word	_Label_2820
	.word	-132
	.word	4
	.word	_Label_2821
	.word	-136
	.word	4
	.word	0
_Label_2783:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2784:
	.ascii	"Pself\0"
	.align
_Label_2785:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2787:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2814:
	.byte	'C'
	.ascii	"_temp_2743\0"
	.align
_Label_2815:
	.byte	'C'
	.ascii	"_temp_2740\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2817:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2821:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2822
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2822:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2823
	.word	_sourceFileName
	.word	368		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2823:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	2657,r13		! source line 2657
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_2824 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2825
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2827
	.word	-12
	.word	4
	.word	0
_Label_2825:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2826:
	.ascii	"Pself\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	2667,r13		! source line 2667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2828 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2828  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2829 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2830 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2831 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2832 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2833 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2679,r13		! source line 2679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2680,r13		! source line 2680
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2834
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	-12
	.word	4
	.word	_Label_2837
	.word	-16
	.word	4
	.word	_Label_2838
	.word	-20
	.word	4
	.word	_Label_2839
	.word	-24
	.word	4
	.word	_Label_2840
	.word	-28
	.word	4
	.word	_Label_2841
	.word	-32
	.word	4
	.word	0
_Label_2834:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2842
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2842:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2843
	.word	_sourceFileName
	.word	385		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2843:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2844 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2845 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2847		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2696,r13		! source line 2696
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2848
_Label_2847:
! ELSE...
	mov	2698,r13		! source line 2698
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2848:
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2850
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2852
	.word	-12
	.word	4
	.word	_Label_2853
	.word	-16
	.word	4
	.word	_Label_2854
	.word	-20
	.word	4
	.word	0
_Label_2850:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2851:
	.ascii	"Pself\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	2704,r13		! source line 2704
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_2855 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2856 = _temp_2855 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
!   _temp_2857 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2858 = _temp_2857 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0RE",r10
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2861 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2860  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2859  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2859  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2862
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2864
	.word	12
	.word	4
	.word	_Label_2865
	.word	16
	.word	4
	.word	_Label_2866
	.word	-16
	.word	4
	.word	_Label_2867
	.word	-20
	.word	4
	.word	_Label_2868
	.word	-9
	.word	1
	.word	_Label_2869
	.word	-24
	.word	4
	.word	_Label_2870
	.word	-28
	.word	4
	.word	_Label_2871
	.word	-32
	.word	4
	.word	_Label_2872
	.word	-36
	.word	4
	.word	_Label_2873
	.word	-40
	.word	4
	.word	0
_Label_2862:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2863:
	.ascii	"Pself\0"
	.align
_Label_2864:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2868:
	.byte	'C'
	.ascii	"_temp_2859\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	2723,r13		! source line 2723
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0IF",r10
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   _temp_2877 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2878) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2877  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2876  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2876 then goto _Label_2875 else goto _Label_2874
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2874
	jmp	_Label_2875
_Label_2874:
! THEN...
	mov	2729,r13		! source line 2729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2879 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2879  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2729,r13		! source line 2729
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2875:
! RETURN STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2880
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2882
	.word	-16
	.word	4
	.word	_Label_2883
	.word	-20
	.word	4
	.word	_Label_2884
	.word	-24
	.word	4
	.word	_Label_2885
	.word	-9
	.word	1
	.word	_Label_2886
	.word	-28
	.word	4
	.word	0
_Label_2880:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2881:
	.ascii	"Pself\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2885:
	.byte	'C'
	.ascii	"_temp_2876\0"
	.align
_Label_2886:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3191:
	push	r0
	sub	r1,1,r1
	bne	_Label_3191
	mov	2736,r13		! source line 2736
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2889 = *_temp_2890  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2889) then goto _Label_2888
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2888
!	jmp	_Label_2887
_Label_2887:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2891 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2763,r13		! source line 2763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2888:
! IF STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0IF",r10
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2895) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2894  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2894 == 1112300152 then goto _Label_2893		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2893
!	jmp	_Label_2892
_Label_2892:
! THEN...
	mov	2768,r13		! source line 2768
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2896 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2768,r13		! source line 2768
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2893:
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2898) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2899) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2901) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2902) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
!   _temp_2905 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2905) then goto _Label_2904
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2782,r13		! source line 2782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2906 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2906  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2782,r13		! source line 2782
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2908
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2908
!	jmp	_Label_2907
_Label_2907:
! THEN...
	mov	2790,r13		! source line 2790
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2909 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2909  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2908:
! IF STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0IF",r10
!   _temp_2912 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2912) then goto _Label_2911
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	2796,r13		! source line 2796
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2913 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2911:
! IF STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0IF",r10
!   _temp_2916 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2916 then goto _Label_2915		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2915
!	jmp	_Label_2914
_Label_2914:
! THEN...
	mov	2800,r13		! source line 2800
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2917 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2915:
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   _temp_2920 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2920) then goto _Label_2919
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2919
!	jmp	_Label_2918
_Label_2918:
! THEN...
	mov	2807,r13		! source line 2807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2921 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2919:
! IF STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0IF",r10
!   _temp_2924 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2924 then goto _Label_2923		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2923
!	jmp	_Label_2922
_Label_2922:
! THEN...
	mov	2811,r13		! source line 2811
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2925 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2925  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2923:
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   _temp_2928 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2927 = _temp_2928 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2926 = _temp_2927 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2926 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2930		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2930
!	jmp	_Label_2929
_Label_2929:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2931 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2932 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2933 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2930:
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_2934 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
	mov	2844,r13		! source line 2844
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2938) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2937  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2937 == 707406378 then goto _Label_2936		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2936
!	jmp	_Label_2935
_Label_2935:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2939 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2939  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
!   _temp_2940 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2936:
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2945 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2946 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2945  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2941:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2946 then goto _Label_2944		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2944
_Label_2942:
	mov	2852,r13		! source line 2852
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
	mov	2853,r13		! source line 2853
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0IF",r10
	mov	2856,r13		! source line 2856
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2949  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2949 then goto _Label_2948 else goto _Label_2947
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2947
	jmp	_Label_2948
_Label_2947:
! THEN...
	mov	2857,r13		! source line 2857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2951 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0SE",r10
!   _temp_2952 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2948:
! SEND STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2943:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2941
! END FOR
_Label_2944:
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2956) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2955  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2955 == 707406378 then goto _Label_2954		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2954
!	jmp	_Label_2953
_Label_2953:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2957 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   _temp_2958 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2954:
! FOR STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2963 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2964 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2963  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2959:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2964 then goto _Label_2962		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2962
_Label_2960:
	mov	2873,r13		! source line 2873
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
	mov	2874,r13		! source line 2874
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0IF",r10
	mov	2877,r13		! source line 2877
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2968) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2967  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2967 then goto _Label_2966 else goto _Label_2965
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2965
	jmp	_Label_2966
_Label_2965:
! THEN...
	mov	2878,r13		! source line 2878
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2969 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2969  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0SE",r10
!   _temp_2970 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2966:
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2961:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2959
! END FOR
_Label_2962:
! IF STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0IF",r10
	mov	2886,r13		! source line 2886
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2974) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2973  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2973 == 707406378 then goto _Label_2972		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2972
!	jmp	_Label_2971
_Label_2971:
! THEN...
	mov	2887,r13		! source line 2887
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2975 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2887,r13		! source line 2887
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
!   _temp_2976 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2972:
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2977
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2979
	.word	12
	.word	4
	.word	_Label_2980
	.word	-16
	.word	4
	.word	_Label_2981
	.word	-20
	.word	4
	.word	_Label_2982
	.word	-24
	.word	4
	.word	_Label_2983
	.word	-28
	.word	4
	.word	_Label_2984
	.word	-32
	.word	4
	.word	_Label_2985
	.word	-36
	.word	4
	.word	_Label_2986
	.word	-40
	.word	4
	.word	_Label_2987
	.word	-9
	.word	1
	.word	_Label_2988
	.word	-44
	.word	4
	.word	_Label_2989
	.word	-48
	.word	4
	.word	_Label_2990
	.word	-52
	.word	4
	.word	_Label_2991
	.word	-56
	.word	4
	.word	_Label_2992
	.word	-60
	.word	4
	.word	_Label_2993
	.word	-64
	.word	4
	.word	_Label_2994
	.word	-68
	.word	4
	.word	_Label_2995
	.word	-72
	.word	4
	.word	_Label_2996
	.word	-76
	.word	4
	.word	_Label_2997
	.word	-10
	.word	1
	.word	_Label_2998
	.word	-80
	.word	4
	.word	_Label_2999
	.word	-84
	.word	4
	.word	_Label_3000
	.word	-88
	.word	4
	.word	_Label_3001
	.word	-92
	.word	4
	.word	_Label_3002
	.word	-96
	.word	4
	.word	_Label_3003
	.word	-100
	.word	4
	.word	_Label_3004
	.word	-104
	.word	4
	.word	_Label_3005
	.word	-108
	.word	4
	.word	_Label_3006
	.word	-112
	.word	4
	.word	_Label_3007
	.word	-116
	.word	4
	.word	_Label_3008
	.word	-120
	.word	4
	.word	_Label_3009
	.word	-124
	.word	4
	.word	_Label_3010
	.word	-128
	.word	4
	.word	_Label_3011
	.word	-132
	.word	4
	.word	_Label_3012
	.word	-136
	.word	4
	.word	_Label_3013
	.word	-140
	.word	4
	.word	_Label_3014
	.word	-144
	.word	4
	.word	_Label_3015
	.word	-148
	.word	4
	.word	_Label_3016
	.word	-152
	.word	4
	.word	_Label_3017
	.word	-156
	.word	4
	.word	_Label_3018
	.word	-160
	.word	4
	.word	_Label_3019
	.word	-164
	.word	4
	.word	_Label_3020
	.word	-168
	.word	4
	.word	_Label_3021
	.word	-172
	.word	4
	.word	_Label_3022
	.word	-176
	.word	4
	.word	_Label_3023
	.word	-180
	.word	4
	.word	_Label_3024
	.word	-184
	.word	4
	.word	_Label_3025
	.word	-188
	.word	4
	.word	_Label_3026
	.word	-192
	.word	4
	.word	_Label_3027
	.word	-196
	.word	4
	.word	_Label_3028
	.word	-200
	.word	4
	.word	_Label_3029
	.word	-204
	.word	4
	.word	_Label_3030
	.word	-208
	.word	4
	.word	_Label_3031
	.word	-212
	.word	4
	.word	_Label_3032
	.word	-216
	.word	4
	.word	_Label_3033
	.word	-220
	.word	4
	.word	_Label_3034
	.word	-224
	.word	4
	.word	_Label_3035
	.word	-228
	.word	4
	.word	_Label_3036
	.word	-232
	.word	4
	.word	_Label_3037
	.word	-236
	.word	4
	.word	_Label_3038
	.word	-240
	.word	4
	.word	_Label_3039
	.word	-244
	.word	4
	.word	_Label_3040
	.word	-248
	.word	4
	.word	_Label_3041
	.word	-252
	.word	4
	.word	_Label_3042
	.word	-256
	.word	4
	.word	_Label_3043
	.word	-260
	.word	4
	.word	_Label_3044
	.word	-264
	.word	4
	.word	_Label_3045
	.word	-268
	.word	4
	.word	0
_Label_2977:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2978:
	.ascii	"Pself\0"
	.align
_Label_2979:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2987:
	.byte	'C'
	.ascii	"_temp_2967\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2997:
	.byte	'C'
	.ascii	"_temp_2949\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3035:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3036:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3037:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3038:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
