class: CommandLineTool
id: refold_ct file.cwl
inputs:
- id: save_file
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
- refold
- ct file
