class: CommandLineTool
id: netSyntenic_out.net.cwl
inputs:
- id: in_net
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_net
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- netSyntenic
- out.net
