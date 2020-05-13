class: CommandLineTool
id: sort2.cwl
inputs:
- id: i
  doc: '- First  column to sort after (Default 0)'
  type: string
  inputBinding:
    prefix: -i
- id: j
  doc: '- Second column to sort after (Default 1)'
  type: string
  inputBinding:
    prefix: -j
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
- sort2
