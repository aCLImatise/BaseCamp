class: CommandLineTool
id: ../../../nebulizer_create_user.cwl
inputs:
- id: in_password
  doc: "specify password for new user account (otherwise\nprogram will prompt for\
    \ password)"
  type: string
  inputBinding:
    prefix: --password
- id: in_check
  doc: check user details but don't try to create the new
  type: boolean
  inputBinding:
    prefix: --check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_user
