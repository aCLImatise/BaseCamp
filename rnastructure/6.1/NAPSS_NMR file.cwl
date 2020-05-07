class: CommandLineTool
id: NAPSS_NMR file.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nmr_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- NAPSS
- NMR file
