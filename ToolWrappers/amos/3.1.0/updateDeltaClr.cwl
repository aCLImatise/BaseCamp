class: CommandLineTool
id: updateDeltaClr.cwl
inputs:
- id: in_version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_depend
  doc: '- Print the program and database dependency list;'
  type: boolean?
  inputBinding:
    prefix: -depend
- id: in_debug
  doc: '- Set the debug <level> (0, non-debug by default);'
  type: long?
  inputBinding:
    prefix: -debug
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_clr_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- updateDeltaClr
