class: CommandLineTool
id: sort2.cwl
inputs:
- id: in_first_column_sort
  doc: '- First  column to sort after (Default 0)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_second_column_sort
  doc: '- Second column to sort after (Default 1)'
  type: long?
  inputBinding:
    prefix: -j
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
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sort2
