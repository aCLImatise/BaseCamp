class: CommandLineTool
id: ../../../halLodExtract.cwl
inputs:
- id: in_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: scale
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- halLodExtract
