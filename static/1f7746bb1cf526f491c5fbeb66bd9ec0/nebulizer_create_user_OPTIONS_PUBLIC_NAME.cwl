class: CommandLineTool
id: nebulizer_create_user_OPTIONS_PUBLIC_NAME.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_user
- OPTIONS
- PUBLIC_NAME
