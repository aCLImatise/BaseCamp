class: CommandLineTool
id: prophyle_compile.cwl
inputs:
- id: in_clean_files_instead
  doc: clean files instead of compiling
  type: boolean
  inputBinding:
    prefix: -C
- id: in_force_recompilation
  doc: force recompilation
  type: boolean
  inputBinding:
    prefix: -F
- id: in_run_compilation_parallel
  doc: run compilation in parallel
  type: boolean
  inputBinding:
    prefix: -P
- id: in_advanced_configuration_json
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle
- compile
