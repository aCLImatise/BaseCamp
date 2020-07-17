class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_proto_2_xsub.cwl
inputs:
- id: prototypes_doth
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: xs_header
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: type_map
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proto_2_xsub
