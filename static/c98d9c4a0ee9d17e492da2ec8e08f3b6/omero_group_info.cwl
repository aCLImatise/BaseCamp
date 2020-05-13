class: CommandLineTool
id: omero_group_info.cwl
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
- id: count
  doc: Print count of all users and owners (default)
  type: boolean
  inputBinding:
    prefix: --count
- id: long
  doc: Print comma-separated list of all users and owners
  type: boolean
  inputBinding:
    prefix: --long
- id: sort_by_id
  doc: Sort groups by ID (default)
  type: boolean
  inputBinding:
    prefix: --sort-by-id
- id: sort_by_name
  doc: Sort groups by name
  type: boolean
  inputBinding:
    prefix: --sort-by-name
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
- info
