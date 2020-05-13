class: CommandLineTool
id: NAPSS_seq file_NMR file.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- NAPSS
- seq file
- NMR file
