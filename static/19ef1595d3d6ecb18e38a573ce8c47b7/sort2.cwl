class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sort2.cwl
inputs:
- id: first_column_sort
  doc: '- First  column to sort after (Default 0)'
  type: string
  inputBinding:
    prefix: -i
- id: second_column_sort
  doc: '- Second column to sort after (Default 1)'
  type: string
  inputBinding:
    prefix: -j
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
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sort2
