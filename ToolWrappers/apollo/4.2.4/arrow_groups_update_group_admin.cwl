class: CommandLineTool
id: arrow_groups_update_group_admin.cwl
inputs:
- id: in_users
  doc: List of emails
  type: string?
  inputBinding:
    prefix: --users
- id: in_group_id
  doc: ''
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
- arrow
- groups
- update_group_admin
