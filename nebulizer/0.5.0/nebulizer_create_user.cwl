class: CommandLineTool
id: ../../../nebulizer_create_user.cwl
inputs:
- id: password
  doc: specify password for new user account (otherwise program will prompt for password)
  type: string
  inputBinding:
    prefix: --password
- id: check
  doc: check user details but don't try to create the new account
  type: boolean
  inputBinding:
    prefix: --check
- id: message
  doc: Mako template to populate and output
  type: File
  inputBinding:
    prefix: --message
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: email
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: public_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_user
