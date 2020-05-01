#!/usr/bin/env cwl-runner

baseCommand:
- ccconfig
class: CommandLineTool
cwlVersion: v1.0
id: ccconfig
inputs:
- doc: path       manually set compiler include path
  id: inc_path
  inputBinding:
    prefix: --inc-path
  type: boolean
- doc: rule       compiler rule for preprocessing
  id: preprocess
  inputBinding:
    prefix: --preprocess
  type: boolean
- doc: rule       compiler rule for compiling objects
  id: compile_obj
  inputBinding:
    prefix: --compile-obj
  type: boolean
- doc: rule       compiler rule for compiling executables
  id: compile_exe
  inputBinding:
    prefix: --compile-exe
  type: boolean
- doc: ext        extension of C source files
  id: c_ext
  inputBinding:
    prefix: --c-ext
  type: boolean
- doc: ext        extension of preprocessor output files
  id: pp_ext
  inputBinding:
    prefix: --pp-ext
  type: boolean
- doc: ext        extension of object files
  id: obj_ext
  inputBinding:
    prefix: --obj-ext
  type: boolean
- doc: ext        extension of executable files
  id: exe_ext
  inputBinding:
    prefix: --exe-ext
  type: boolean
- doc: don't delete temporary files
  id: no_delete
  inputBinding:
    prefix: --nodelete
  type: boolean
- doc: don't try to run executables
  id: no_run
  inputBinding:
    prefix: --norun
  type: boolean
- doc: don't display anything
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: don't display status indicator
  id: no_status
  inputBinding:
    prefix: --nostatus
  type: boolean
- doc: debug mode
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
