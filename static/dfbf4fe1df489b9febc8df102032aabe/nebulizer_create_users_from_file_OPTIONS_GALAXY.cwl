class: CommandLineTool
id: nebulizer_create_users_from_file_OPTIONS_GALAXY.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_users_from_file
- OPTIONS
- GALAXY
