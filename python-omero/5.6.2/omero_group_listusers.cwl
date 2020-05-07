class: CommandLineTool
id: omero_group_listusers.cwl
inputs:
- id: group
  doc: ID or name of the group(s)
  type: string
  inputBinding:
    position: 0
- id: style
  doc: use alternative output style (default=sql)
  type: string
  inputBinding:
    prefix: --style
- id: long
  doc: Print comma-separated list of all groups (default)
  type: boolean
  inputBinding:
    prefix: --long
- id: count
  doc: Print count of all groups
  type: boolean
  inputBinding:
    prefix: --count
- id: sort_by_id
  doc: Sort users by ID (default)
  type: boolean
  inputBinding:
    prefix: --sort-by-id
- id: sort_by_login
  doc: Sort users by login
  type: boolean
  inputBinding:
    prefix: --sort-by-login
- id: sort_by_first_name
  doc: Sort users by first name
  type: boolean
  inputBinding:
    prefix: --sort-by-first-name
- id: sort_by_last_name
  doc: Sort users by last name
  type: boolean
  inputBinding:
    prefix: --sort-by-last-name
- id: sort_by_email
  doc: Sort users by email
  type: boolean
  inputBinding:
    prefix: --sort-by-email
- id: group_id
  doc: ID  of the group(s)
  type: string[]
  inputBinding:
    prefix: --group-id
- id: group_name
  doc: Name of the group(s)
  type: string[]
  inputBinding:
    prefix: --group-name
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- group
- listusers
