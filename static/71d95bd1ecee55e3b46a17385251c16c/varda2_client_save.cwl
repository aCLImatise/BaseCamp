class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varda2_client_save.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: varda_two_client
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- save
