class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_simulator_fr_num.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: simulator
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- simulator
- fr_num
