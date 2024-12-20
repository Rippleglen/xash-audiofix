# Generated by CMake 3.3.1

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget LLVMSupport LLVMTableGen llvm-tblgen LLVMCore LLVMIRReader LLVMCodeGen LLVMSelectionDAG LLVMAsmPrinter LLVMMIRParser LLVMGlobalISel LLVMBitReader LLVMBitWriter LLVMTransformUtils LLVMInstrumentation LLVMInstCombine LLVMScalarOpts LLVMipo LLVMVectorize LLVMHello LLVMObjCARCOpts LLVMLinker LLVMAnalysis LLVMLTO LLVMMC LLVMMCParser LLVMMCDisassembler LLVMObject LLVMObjectYAML LLVMOption LLVMDebugInfoCodeView LLVMDebugInfoDWARF LLVMDebugInfoPDB LLVMSymbolize LLVMExecutionEngine LLVMInterpreter LLVMMCJIT LLVMOrcJIT LLVMRuntimeDyld LLVMTarget LLVMX86CodeGen LLVMX86AsmParser LLVMX86Disassembler LLVMX86AsmPrinter LLVMX86Desc LLVMX86Info LLVMX86Utils LLVMJSBackendCodeGen LLVMJSBackendInfo LLVMJSBackendDesc LLVMPNaClTransforms LLVMAsmParser LLVMLineEditor LLVMProfileData LLVMCoverage LLVMPasses LLVMLibDriver LTO llvm-ar llvm-config llvm-lto llvm-profdata llc lli opt llvm-pdbdump llvm-split sanstats BugpointPasses llvm-mcmarkup llvm-readobj llvm-as llvm-mc llvm-nm llvm-cxxdump llvm-symbolizer llvm-c-test llvm-dwarfdump llvm-cov llvm-dis llvm-dwp obj2yaml sancov yaml2obj bugpoint llvm-extract llvm-diff llvm-link llvm-size llvm-rtdyld llvm-stress llvm-dsymutil llvm-objdump verify-uselistorder llvm-bcanalyzer)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Create imported target LLVMSupport
add_library(LLVMSupport STATIC IMPORTED)

set_target_properties(LLVMSupport PROPERTIES
  INTERFACE_LINK_LIBRARIES "rt;dl;curses;-lpthread;z;m"
)

# Create imported target LLVMTableGen
add_library(LLVMTableGen STATIC IMPORTED)

set_target_properties(LLVMTableGen PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target llvm-tblgen
add_executable(llvm-tblgen IMPORTED)

# Create imported target LLVMCore
add_library(LLVMCore STATIC IMPORTED)

set_target_properties(LLVMCore PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMIRReader
add_library(LLVMIRReader STATIC IMPORTED)

set_target_properties(LLVMIRReader PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAsmParser;LLVMBitReader;LLVMCore;LLVMSupport"
)

# Create imported target LLVMCodeGen
add_library(LLVMCodeGen STATIC IMPORTED)

set_target_properties(LLVMCodeGen PROPERTIES
  INTERFACE_LINK_LIBRARIES "-lpthread;LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMCore;LLVMInstrumentation;LLVMMC;LLVMProfileData;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTransformUtils"
)

# Create imported target LLVMSelectionDAG
add_library(LLVMSelectionDAG STATIC IMPORTED)

set_target_properties(LLVMSelectionDAG PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport;LLVMTarget;LLVMTransformUtils"
)

# Create imported target LLVMAsmPrinter
add_library(LLVMAsmPrinter STATIC IMPORTED)

set_target_properties(LLVMAsmPrinter PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMDebugInfoCodeView;LLVMMC;LLVMMCParser;LLVMSupport;LLVMTarget;LLVMTransformUtils"
)

# Create imported target LLVMMIRParser
add_library(LLVMMIRParser STATIC IMPORTED)

set_target_properties(LLVMMIRParser PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAsmParser;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport;LLVMTarget"
)

# Create imported target LLVMGlobalISel
add_library(LLVMGlobalISel STATIC IMPORTED)

set_target_properties(LLVMGlobalISel PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport;LLVMTarget;LLVMTransformUtils"
)

# Create imported target LLVMBitReader
add_library(LLVMBitReader STATIC IMPORTED)

set_target_properties(LLVMBitReader PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMSupport"
)

# Create imported target LLVMBitWriter
add_library(LLVMBitWriter STATIC IMPORTED)

set_target_properties(LLVMBitWriter PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport"
)

# Create imported target LLVMTransformUtils
add_library(LLVMTransformUtils STATIC IMPORTED)

set_target_properties(LLVMTransformUtils PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport"
)

# Create imported target LLVMInstrumentation
add_library(LLVMInstrumentation STATIC IMPORTED)

set_target_properties(LLVMInstrumentation PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMMC;LLVMProfileData;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMInstCombine
add_library(LLVMInstCombine STATIC IMPORTED)

set_target_properties(LLVMInstCombine PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMScalarOpts
add_library(LLVMScalarOpts STATIC IMPORTED)

set_target_properties(LLVMScalarOpts PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMInstCombine;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMipo
add_library(LLVMipo STATIC IMPORTED)

set_target_properties(LLVMipo PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMIRReader;LLVMInstCombine;LLVMInstrumentation;LLVMLinker;LLVMObject;LLVMProfileData;LLVMScalarOpts;LLVMSupport;LLVMTransformUtils;LLVMVectorize"
)

# Create imported target LLVMVectorize
add_library(LLVMVectorize STATIC IMPORTED)

set_target_properties(LLVMVectorize PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMHello
add_library(LLVMHello MODULE IMPORTED)

# Create imported target LLVMObjCARCOpts
add_library(LLVMObjCARCOpts STATIC IMPORTED)

set_target_properties(LLVMObjCARCOpts PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMLinker
add_library(LLVMLinker STATIC IMPORTED)

set_target_properties(LLVMLinker PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMAnalysis
add_library(LLVMAnalysis STATIC IMPORTED)

set_target_properties(LLVMAnalysis PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMProfileData;LLVMSupport"
)

# Create imported target LLVMLTO
add_library(LLVMLTO STATIC IMPORTED)

set_target_properties(LLVMLTO PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMCodeGen;LLVMCore;LLVMInstCombine;LLVMLinker;LLVMMC;LLVMObjCARCOpts;LLVMObject;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTransformUtils;LLVMipo"
)

# Create imported target LLVMMC
add_library(LLVMMC STATIC IMPORTED)

set_target_properties(LLVMMC PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMMCParser
add_library(LLVMMCParser STATIC IMPORTED)

set_target_properties(LLVMMCParser PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMSupport"
)

# Create imported target LLVMMCDisassembler
add_library(LLVMMCDisassembler STATIC IMPORTED)

set_target_properties(LLVMMCDisassembler PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMSupport"
)

# Create imported target LLVMObject
add_library(LLVMObject STATIC IMPORTED)

set_target_properties(LLVMObject PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMBitReader;LLVMCore;LLVMMC;LLVMMCParser;LLVMSupport"
)

# Create imported target LLVMObjectYAML
add_library(LLVMObjectYAML STATIC IMPORTED)

set_target_properties(LLVMObjectYAML PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMOption
add_library(LLVMOption STATIC IMPORTED)

set_target_properties(LLVMOption PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMDebugInfoCodeView
add_library(LLVMDebugInfoCodeView STATIC IMPORTED)

set_target_properties(LLVMDebugInfoCodeView PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMDebugInfoDWARF
add_library(LLVMDebugInfoDWARF STATIC IMPORTED)

set_target_properties(LLVMDebugInfoDWARF PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMObject;LLVMSupport"
)

# Create imported target LLVMDebugInfoPDB
add_library(LLVMDebugInfoPDB STATIC IMPORTED)

set_target_properties(LLVMDebugInfoPDB PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMDebugInfoCodeView;LLVMObject;LLVMSupport"
)

# Create imported target LLVMSymbolize
add_library(LLVMSymbolize STATIC IMPORTED)

set_target_properties(LLVMSymbolize PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMDebugInfoDWARF;LLVMDebugInfoPDB;LLVMObject;LLVMSupport"
)

# Create imported target LLVMExecutionEngine
add_library(LLVMExecutionEngine STATIC IMPORTED)

set_target_properties(LLVMExecutionEngine PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMMC;LLVMObject;LLVMRuntimeDyld;LLVMSupport;LLVMTarget"
)

# Create imported target LLVMInterpreter
add_library(LLVMInterpreter STATIC IMPORTED)

set_target_properties(LLVMInterpreter PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCodeGen;LLVMCore;LLVMExecutionEngine;LLVMSupport"
)

# Create imported target LLVMMCJIT
add_library(LLVMMCJIT STATIC IMPORTED)

set_target_properties(LLVMMCJIT PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMExecutionEngine;LLVMObject;LLVMRuntimeDyld;LLVMSupport;LLVMTarget"
)

# Create imported target LLVMOrcJIT
add_library(LLVMOrcJIT STATIC IMPORTED)

set_target_properties(LLVMOrcJIT PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMExecutionEngine;LLVMObject;LLVMRuntimeDyld;LLVMSupport;LLVMTransformUtils"
)

# Create imported target LLVMRuntimeDyld
add_library(LLVMRuntimeDyld STATIC IMPORTED)

set_target_properties(LLVMRuntimeDyld PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMObject;LLVMSupport"
)

# Create imported target LLVMTarget
add_library(LLVMTarget STATIC IMPORTED)

set_target_properties(LLVMTarget PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMMC;LLVMSupport"
)

# Create imported target LLVMX86CodeGen
add_library(LLVMX86CodeGen STATIC IMPORTED)

set_target_properties(LLVMX86CodeGen PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMX86AsmPrinter;LLVMX86Desc;LLVMX86Info;LLVMX86Utils"
)

# Create imported target LLVMX86AsmParser
add_library(LLVMX86AsmParser STATIC IMPORTED)

set_target_properties(LLVMX86AsmParser PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMMCParser;LLVMSupport;LLVMX86Desc;LLVMX86Info"
)

# Create imported target LLVMX86Disassembler
add_library(LLVMX86Disassembler STATIC IMPORTED)

set_target_properties(LLVMX86Disassembler PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMCDisassembler;LLVMSupport;LLVMX86Info"
)

# Create imported target LLVMX86AsmPrinter
add_library(LLVMX86AsmPrinter STATIC IMPORTED)

set_target_properties(LLVMX86AsmPrinter PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMSupport;LLVMX86Utils"
)

# Create imported target LLVMX86Desc
add_library(LLVMX86Desc STATIC IMPORTED)

set_target_properties(LLVMX86Desc PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMMCDisassembler;LLVMObject;LLVMSupport;LLVMX86AsmPrinter;LLVMX86Info"
)

# Create imported target LLVMX86Info
add_library(LLVMX86Info STATIC IMPORTED)

set_target_properties(LLVMX86Info PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport"
)

# Create imported target LLVMX86Utils
add_library(LLVMX86Utils STATIC IMPORTED)

set_target_properties(LLVMX86Utils PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMSupport"
)

# Create imported target LLVMJSBackendCodeGen
add_library(LLVMJSBackendCodeGen STATIC IMPORTED)

set_target_properties(LLVMJSBackendCodeGen PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMJSBackendDesc;LLVMJSBackendInfo;LLVMPNaClTransforms;LLVMSupport;LLVMTarget"
)

# Create imported target LLVMJSBackendInfo
add_library(LLVMJSBackendInfo STATIC IMPORTED)

set_target_properties(LLVMJSBackendInfo PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMMC;LLVMSupport;LLVMTarget"
)

# Create imported target LLVMJSBackendDesc
add_library(LLVMJSBackendDesc STATIC IMPORTED)

set_target_properties(LLVMJSBackendDesc PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMJSBackendInfo;LLVMMC;LLVMSupport"
)

# Create imported target LLVMPNaClTransforms
add_library(LLVMPNaClTransforms STATIC IMPORTED)

set_target_properties(LLVMPNaClTransforms PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMScalarOpts;LLVMSupport;LLVMTransformUtils;LLVMipo"
)

# Create imported target LLVMAsmParser
add_library(LLVMAsmParser STATIC IMPORTED)

set_target_properties(LLVMAsmParser PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMSupport"
)

# Create imported target LLVMLineEditor
add_library(LLVMLineEditor STATIC IMPORTED)

set_target_properties(LLVMLineEditor PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMSupport;LLVMSupport"
)

# Create imported target LLVMProfileData
add_library(LLVMProfileData STATIC IMPORTED)

set_target_properties(LLVMProfileData PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMSupport"
)

# Create imported target LLVMCoverage
add_library(LLVMCoverage STATIC IMPORTED)

set_target_properties(LLVMCoverage PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCore;LLVMObject;LLVMProfileData;LLVMSupport"
)

# Create imported target LLVMPasses
add_library(LLVMPasses STATIC IMPORTED)

set_target_properties(LLVMPasses PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMInstCombine;LLVMInstrumentation;LLVMScalarOpts;LLVMSupport;LLVMTransformUtils;LLVMVectorize;LLVMipo"
)

# Create imported target LLVMLibDriver
add_library(LLVMLibDriver STATIC IMPORTED)

set_target_properties(LLVMLibDriver PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMObject;LLVMOption;LLVMSupport"
)

# Create imported target LTO
add_library(LTO SHARED IMPORTED)

# Create imported target llvm-ar
add_executable(llvm-ar IMPORTED)

# Create imported target llvm-config
add_executable(llvm-config IMPORTED)

# Create imported target llvm-lto
add_executable(llvm-lto IMPORTED)

# Create imported target llvm-profdata
add_executable(llvm-profdata IMPORTED)

# Create imported target llc
add_executable(llc IMPORTED)
set_property(TARGET llc PROPERTY ENABLE_EXPORTS 1)

set_target_properties(llc PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMX86CodeGen;LLVMX86AsmPrinter;LLVMX86AsmParser;LLVMX86Desc;LLVMX86Info;LLVMX86Disassembler;LLVMJSBackendCodeGen;LLVMJSBackendDesc;LLVMJSBackendInfo;LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMIRReader;LLVMMC;LLVMMIRParser;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTransformUtils;-lpthread"
)

# Create imported target lli
add_executable(lli IMPORTED)
set_property(TARGET lli PROPERTY ENABLE_EXPORTS 1)

set_target_properties(lli PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMCodeGen;LLVMCore;LLVMExecutionEngine;LLVMIRReader;LLVMInstrumentation;LLVMInterpreter;LLVMMC;LLVMMCJIT;LLVMObject;LLVMOrcJIT;LLVMRuntimeDyld;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTransformUtils;LLVMX86CodeGen;LLVMX86AsmPrinter;LLVMX86AsmParser;LLVMX86Desc;LLVMX86Info;LLVMX86Disassembler;-lpthread"
)

# Create imported target opt
add_executable(opt IMPORTED)
set_property(TARGET opt PROPERTY ENABLE_EXPORTS 1)

set_target_properties(opt PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMX86CodeGen;LLVMX86AsmPrinter;LLVMX86AsmParser;LLVMX86Desc;LLVMX86Info;LLVMX86Disassembler;LLVMJSBackendCodeGen;LLVMJSBackendDesc;LLVMJSBackendInfo;LLVMAnalysis;LLVMBitWriter;LLVMCodeGen;LLVMCore;LLVMipo;LLVMIRReader;LLVMLinker;LLVMJSBackendCodeGen;LLVMJSBackendDesc;LLVMJSBackendInfo;LLVMInstCombine;LLVMInstrumentation;LLVMMC;LLVMObjCARCOpts;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTransformUtils;LLVMVectorize;LLVMPasses;-lpthread"
)

# Create imported target llvm-pdbdump
add_executable(llvm-pdbdump IMPORTED)

# Create imported target llvm-split
add_executable(llvm-split IMPORTED)

# Create imported target sanstats
add_executable(sanstats IMPORTED)

# Create imported target BugpointPasses
add_library(BugpointPasses MODULE IMPORTED)

# Create imported target llvm-mcmarkup
add_executable(llvm-mcmarkup IMPORTED)

# Create imported target llvm-readobj
add_executable(llvm-readobj IMPORTED)

# Create imported target llvm-as
add_executable(llvm-as IMPORTED)

# Create imported target llvm-mc
add_executable(llvm-mc IMPORTED)

# Create imported target llvm-nm
add_executable(llvm-nm IMPORTED)

# Create imported target llvm-cxxdump
add_executable(llvm-cxxdump IMPORTED)

# Create imported target llvm-symbolizer
add_executable(llvm-symbolizer IMPORTED)

# Create imported target llvm-c-test
add_executable(llvm-c-test IMPORTED)

# Create imported target llvm-dwarfdump
add_executable(llvm-dwarfdump IMPORTED)

# Create imported target llvm-cov
add_executable(llvm-cov IMPORTED)

# Create imported target llvm-dis
add_executable(llvm-dis IMPORTED)

# Create imported target llvm-dwp
add_executable(llvm-dwp IMPORTED)

# Create imported target obj2yaml
add_executable(obj2yaml IMPORTED)

# Create imported target sancov
add_executable(sancov IMPORTED)

# Create imported target yaml2obj
add_executable(yaml2obj IMPORTED)

# Create imported target bugpoint
add_executable(bugpoint IMPORTED)
set_property(TARGET bugpoint PROPERTY ENABLE_EXPORTS 1)

set_target_properties(bugpoint PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMBitWriter;LLVMCodeGen;LLVMCore;LLVMipo;LLVMIRReader;LLVMInstCombine;LLVMInstrumentation;LLVMLinker;LLVMJSBackendCodeGen;LLVMJSBackendDesc;LLVMJSBackendInfo;LLVMObjCARCOpts;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTransformUtils;LLVMVectorize;-lpthread"
)

# Create imported target llvm-extract
add_executable(llvm-extract IMPORTED)

# Create imported target llvm-diff
add_executable(llvm-diff IMPORTED)

# Create imported target llvm-link
add_executable(llvm-link IMPORTED)

# Create imported target llvm-size
add_executable(llvm-size IMPORTED)

# Create imported target llvm-rtdyld
add_executable(llvm-rtdyld IMPORTED)

# Create imported target llvm-stress
add_executable(llvm-stress IMPORTED)
set_property(TARGET llvm-stress PROPERTY ENABLE_EXPORTS 1)

set_target_properties(llvm-stress PROPERTIES
  INTERFACE_LINK_LIBRARIES "LLVMAnalysis;LLVMCore;LLVMSupport;-lpthread"
)

# Create imported target llvm-dsymutil
add_executable(llvm-dsymutil IMPORTED)

# Create imported target llvm-objdump
add_executable(llvm-objdump IMPORTED)

# Create imported target verify-uselistorder
add_executable(verify-uselistorder IMPORTED)

# Create imported target llvm-bcanalyzer
add_executable(llvm-bcanalyzer IMPORTED)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/LLVMExports-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
