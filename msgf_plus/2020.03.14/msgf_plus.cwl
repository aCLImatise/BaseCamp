class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msgf_plus.cwl
inputs:
- id: x_mx_three_five_zero_zero_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Xmx3500M
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msgf_plus
