class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/runcon.cwl
inputs:
- id: compute
  doc: compute process transition context before modifying
  type: boolean
  inputBinding:
    prefix: --compute
- id: type
  doc: type (for same role as parent)
  type: string
  inputBinding:
    prefix: --type
- id: user
  doc: user identity
  type: string
  inputBinding:
    prefix: --user
- id: role
  doc: role
  type: string
  inputBinding:
    prefix: --role
- id: range
  doc: levelrange
  type: string
  inputBinding:
    prefix: --range
- id: context
  doc: Complete security context
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- runcon
