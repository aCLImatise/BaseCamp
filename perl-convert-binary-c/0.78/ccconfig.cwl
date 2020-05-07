class: CommandLineTool
id: ccconfig.cwl
inputs:
- id: inc_path
  doc: path       manually set compiler include path
  type: boolean
  inputBinding:
    prefix: --inc-path
- id: preprocess
  doc: rule       compiler rule for preprocessing
  type: boolean
  inputBinding:
    prefix: --preprocess
- id: compile_obj
  doc: rule       compiler rule for compiling objects
  type: boolean
  inputBinding:
    prefix: --compile-obj
- id: compile_exe
  doc: rule       compiler rule for compiling executables
  type: boolean
  inputBinding:
    prefix: --compile-exe
- id: c_ext
  doc: ext        extension of C source files
  type: boolean
  inputBinding:
    prefix: --c-ext
- id: pp_ext
  doc: ext        extension of preprocessor output files
  type: boolean
  inputBinding:
    prefix: --pp-ext
- id: obj_ext
  doc: ext        extension of object files
  type: boolean
  inputBinding:
    prefix: --obj-ext
- id: exe_ext
  doc: ext        extension of executable files
  type: boolean
  inputBinding:
    prefix: --exe-ext
- id: no_delete
  doc: don't delete temporary files
  type: boolean
  inputBinding:
    prefix: --nodelete
- id: no_run
  doc: don't try to run executables
  type: boolean
  inputBinding:
    prefix: --norun
- id: quiet
  doc: don't display anything
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_status
  doc: don't display status indicator
  type: boolean
  inputBinding:
    prefix: --nostatus
- id: debug
  doc: debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- ccconfig
