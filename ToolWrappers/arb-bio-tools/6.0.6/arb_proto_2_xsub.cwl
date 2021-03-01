class: CommandLineTool
id: arb_proto_2_xsub.cwl
inputs:
- id: in_prototypes_doth
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_xs_header
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_type_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_proto_2_xsub
