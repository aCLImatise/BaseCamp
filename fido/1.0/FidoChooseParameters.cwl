class: CommandLineTool
id: FidoChooseParameters.cwl
inputs:
- id: graph_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_decoy_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- FidoChooseParameters
