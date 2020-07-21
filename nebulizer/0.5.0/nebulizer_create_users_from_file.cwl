class: CommandLineTool
id: ../../../nebulizer_create_users_from_file.cwl
inputs:
- id: check
  doc: check user details but don't try to create the new account.
  type: boolean
  inputBinding:
    prefix: --check
- id: message
  doc: Mako template to populate and output.
  type: File
  inputBinding:
    prefix: --message
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_users_from_file
