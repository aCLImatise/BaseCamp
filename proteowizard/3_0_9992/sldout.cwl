class: CommandLineTool
id: ../../../sldout.cwl
inputs:
- id: csv_vertical_line_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_dots_ld
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sldout
