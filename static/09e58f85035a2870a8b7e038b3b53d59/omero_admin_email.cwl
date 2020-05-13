class: CommandLineTool
id: omero_admin_email.cwl
inputs:
- id: subject
  doc: Required subject for the mail
  type: string
  inputBinding:
    position: 0
- id: text
  doc: All further arguments are combined to form the body. stdin if none or '-' is
    given.
  type: string
  inputBinding:
    position: 1
- id: everyone
  doc: Contact everyone in the system regardless of other arguments.
  type: boolean
  inputBinding:
    prefix: --everyone
- id: inactive
  doc: Do not filter inactive users.
  type: boolean
  inputBinding:
    prefix: --inactive
- id: wait
  doc: Number of seconds to wait for the processing to complete (Indefinite < 0; No
    wait=0).
  type: string
  inputBinding:
    prefix: --wait
- id: user_id
  doc: ID of the user.
  type: string
  inputBinding:
    prefix: --user-id
- id: user_name
  doc: Name of the user.
  type: string
  inputBinding:
    prefix: --user-name
- id: group_id
  doc: ID of the group.
  type: string
  inputBinding:
    prefix: --group-id
- id: group_name
  doc: Name of the group.
  type: string
  inputBinding:
    prefix: --group-name
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- email
