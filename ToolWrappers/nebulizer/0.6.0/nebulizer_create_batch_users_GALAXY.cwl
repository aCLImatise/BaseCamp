class: CommandLineTool
id: nebulizer_create_batch_users_GALAXY.cwl
inputs:
- id: in_password
  doc: "specify password for new user accounts (otherwise\nprogram will prompt for\
    \ password). All accounts will be\ncreated with the same password."
  type: string?
  inputBinding:
    prefix: --password
- id: in_check
  doc: check user details but don't try to create the new
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_account_dot
  doc: --help               Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- GALAXY
