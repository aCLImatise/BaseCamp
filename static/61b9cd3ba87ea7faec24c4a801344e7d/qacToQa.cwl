class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qacToQa.cwl
inputs:
- id: name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
- id: in_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_qa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qacToQa
