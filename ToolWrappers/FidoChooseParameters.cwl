class: CommandLineTool
id: FidoChooseParameters.cwl
inputs:
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_graph_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_target_decoy_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FidoChooseParameters
