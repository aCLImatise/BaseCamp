class: CommandLineTool
id: omero_db_script.cwl
inputs:
- id: pos_version
  doc: ==SUPPRESS==
  type: string
  inputBinding:
    position: 0
- id: pos_patch
  doc: ==SUPPRESS==
  type: string
  inputBinding:
    position: 1
- id: pos_password
  doc: ==SUPPRESS==
  type: string
  inputBinding:
    position: 2
- id: file
  doc: Optional file to save to. Use '-' for stdout.
  type: File
  inputBinding:
    prefix: --file
- id: patch
  doc: ==SUPPRESS==
  type: string
  inputBinding:
    prefix: --patch
- id: password
  doc: OMERO root password
  type: string
  inputBinding:
    prefix: --password
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
- script
