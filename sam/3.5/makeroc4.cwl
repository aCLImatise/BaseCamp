class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makeroc4.cwl
inputs:
- id: distfile
  doc: .dist    Score file to read (required).
  type: string
  inputBinding:
    prefix: -distfile
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makeroc4
