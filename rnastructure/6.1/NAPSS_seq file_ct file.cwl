class: CommandLineTool
id: NAPSS_seq file_ct file.cwl
inputs:
- id: nmr_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- NAPSS
- seq file
- ct file
