class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_sub.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: array_dot_bits
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- sub
