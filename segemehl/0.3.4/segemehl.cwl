class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segemehl.x.cwl
inputs:
- id: be_svoc_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -besVOcf
- id: d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
- id: q
  doc: ''
  type: File
  inputBinding:
    prefix: -q
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- segemehl.x
