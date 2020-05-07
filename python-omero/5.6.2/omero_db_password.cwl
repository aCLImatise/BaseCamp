class: CommandLineTool
id: omero_db_password.cwl
inputs:
- id: empty
  doc: Remove the password, allowing any for login when guest.
  type: boolean
  inputBinding:
    prefix: --empty
- id: user_id
  doc: User ID to salt into the password. Defaults to '0', i.e. 'root'
  type: string
  inputBinding:
    prefix: --user-id
- id: no_salt
  doc: Disable the salting of passwords
  type: boolean
  inputBinding:
    prefix: --no-salt
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- db
- password
