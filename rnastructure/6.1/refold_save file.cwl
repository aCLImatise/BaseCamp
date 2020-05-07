class: CommandLineTool
id: refold_save file.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- refold
- save file
