class: CommandLineTool
id: nucmer2ovl.cwl
inputs:
- id: in_tab
  doc: '- Output format (Default: AMOS)'
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_ignore
  doc: '- Maximum length of the end sequence unaligned (Default: 20 bp)'
  type: long?
  inputBinding:
    prefix: -ignore
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
- nucmer2ovl
