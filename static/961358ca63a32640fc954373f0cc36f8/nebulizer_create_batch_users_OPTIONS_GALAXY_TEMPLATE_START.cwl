class: CommandLineTool
id: nebulizer_create_batch_users_OPTIONS_GALAXY_TEMPLATE_START.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- OPTIONS
- GALAXY
- TEMPLATE
- START
