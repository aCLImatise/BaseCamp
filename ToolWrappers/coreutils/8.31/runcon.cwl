class: CommandLineTool
id: runcon.cwl
inputs:
- id: in_compute
  doc: compute process transition context before modifying
  type: boolean?
  inputBinding:
    prefix: --compute
- id: in_type
  doc: type (for same role as parent)
  type: string?
  inputBinding:
    prefix: --type
- id: in_user
  doc: user identity
  type: string?
  inputBinding:
    prefix: --user
- id: in_role
  doc: role
  type: string?
  inputBinding:
    prefix: --role
- id: in_range
  doc: levelrange
  type: string?
  inputBinding:
    prefix: --range
- id: in_context
  doc: Complete security context
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runcon
