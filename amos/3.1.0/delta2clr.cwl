class: CommandLineTool
id: delta2clr.cwl
inputs:
- id: v
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
  doc: 'debug <level> (0, non-debug by default); '
  type: string
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- delta2clr
