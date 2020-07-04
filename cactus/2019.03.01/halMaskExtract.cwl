class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halMaskExtract.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halMaskExtract
