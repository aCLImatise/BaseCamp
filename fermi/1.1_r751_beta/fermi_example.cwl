class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_example.cwl
inputs:
- id: ceu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ceU
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- example
