class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/updateDeltaClr.cwl
inputs:
- id: version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean
  inputBinding:
    prefix: -V
- id: depend
  doc: '- Print the program and database dependency list;'
  type: boolean
  inputBinding:
    prefix: -depend
- id: debug
  doc: '- Set the debug <level> (0, non-debug by default); '
  type: string
  inputBinding:
    prefix: -debug
- id: delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: clr_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- updateDeltaClr
