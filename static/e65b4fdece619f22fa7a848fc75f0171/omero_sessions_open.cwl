class: CommandLineTool
id: omero_sessions_open.cwl
inputs:
- id: user_id
  doc: ID of the user
  type: string
  inputBinding:
    prefix: --user-id
- id: user_name
  doc: Name of the user
  type: string
  inputBinding:
    prefix: --user-name
- id: group_id
  doc: ID of the group
  type: string
  inputBinding:
    prefix: --group-id
- id: group_name
  doc: Name of the group
  type: string
  inputBinding:
    prefix: --group-name
- id: timeout
  doc: '[TIMEOUT]  Timeout in seconds (optional; default: maximum possible)'
  type: boolean
  inputBinding:
    prefix: --timeout
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- open
