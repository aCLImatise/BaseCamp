class: CommandLineTool
id: ../../../kggseq.cwl
inputs:
- id: x_mx_on_eg
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Xmx1g
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
- id: param_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kggseq
