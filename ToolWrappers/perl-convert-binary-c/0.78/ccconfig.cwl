class: CommandLineTool
id: ccconfig.cwl
inputs:
- id: in_cc
  doc: "compiler   compiler executable to test\ndefault: auto-determined"
  type: boolean?
  inputBinding:
    prefix: --cc
- id: in_output_file
  doc: "file       output filename\ndefault: output to stdout"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_format
  doc: "format     output format\ndefault: dumper"
  type: boolean?
  inputBinding:
    prefix: --output-format
- id: in_basename
  doc: "name       basename of the temporary test files\ndefault: _t_e_s_t"
  type: boolean?
  inputBinding:
    prefix: --basename
- id: in_inc_path
  doc: path       manually set compiler include path
  type: boolean?
  inputBinding:
    prefix: --inc-path
- id: in_preprocess
  doc: rule       compiler rule for preprocessing
  type: boolean?
  inputBinding:
    prefix: --preprocess
- id: in_compile_obj
  doc: rule       compiler rule for compiling objects
  type: boolean?
  inputBinding:
    prefix: --compile-obj
- id: in_compile_exe
  doc: rule       compiler rule for compiling executables
  type: boolean?
  inputBinding:
    prefix: --compile-exe
- id: in_c_ext
  doc: ext        extension of C source files
  type: boolean?
  inputBinding:
    prefix: --c-ext
- id: in_pp_ext
  doc: ext        extension of preprocessor output files
  type: boolean?
  inputBinding:
    prefix: --pp-ext
- id: in_obj_ext
  doc: ext        extension of object files
  type: boolean?
  inputBinding:
    prefix: --obj-ext
- id: in_exe_ext
  doc: ext        extension of executable files
  type: boolean?
  inputBinding:
    prefix: --exe-ext
- id: in_no_delete
  doc: don't delete temporary files
  type: boolean?
  inputBinding:
    prefix: --nodelete
- id: in_no_run
  doc: don't try to run executables
  type: boolean?
  inputBinding:
    prefix: --norun
- id: in_quiet
  doc: don't display anything
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_no_status
  doc: don't display status indicator
  type: boolean?
  inputBinding:
    prefix: --nostatus
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "file       output filename\ndefault: output to stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ccconfig
