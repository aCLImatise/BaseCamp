class: CommandLineTool
id: delta2clr.cwl
inputs:
- id: in_zero_cvg
  doc: "- File that contain zero coverage regions;\nreads ending in these regions\
    \ won't get trimmed"
  type: File?
  inputBinding:
    prefix: -zero_cvg
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- delta2clr
