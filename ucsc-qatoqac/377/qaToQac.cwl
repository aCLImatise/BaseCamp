class: CommandLineTool
id: ../../../qaToQac.cwl
inputs:
- id: in_dot_qa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qaToQac
