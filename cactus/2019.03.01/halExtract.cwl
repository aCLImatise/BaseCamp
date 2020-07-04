class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halExtract.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- halExtract
