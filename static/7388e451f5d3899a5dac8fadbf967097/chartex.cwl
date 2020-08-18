class: CommandLineTool
id: ../../../chartex.cwl
inputs:
- id: man
  doc: Prints the manual page and exits.
  type: string
  inputBinding:
    prefix: --man
- id: chart_name
  doc: ''
  type: boolean
  inputBinding:
    prefix: --chartname
- id: file_dot_xls
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chartex
