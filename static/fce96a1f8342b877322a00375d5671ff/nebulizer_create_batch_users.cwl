class: CommandLineTool
id: ../../../nebulizer_create_batch_users.cwl
inputs:
- id: password
  doc: specify password for new user accounts (otherwise program will prompt for password).
    All accounts will be created with the same password.
  type: string
  inputBinding:
    prefix: --password
- id: check
  doc: check user details but don't try to create the new account.
  type: boolean
  inputBinding:
    prefix: --check
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: template
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
