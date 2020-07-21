class: CommandLineTool
id: ../../../autoDtd.cwl
inputs:
- id: tree
  doc: '- Output tag tree.'
  type: string
  inputBinding:
    prefix: -tree
- id: a_tree
  doc: '- Output attributed tag tree.'
  type: string
  inputBinding:
    prefix: -atree
- id: in_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_dtd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_stats
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- autoDtd
