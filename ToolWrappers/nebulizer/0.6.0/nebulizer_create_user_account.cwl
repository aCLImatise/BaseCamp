class: CommandLineTool
id: nebulizer_create_user_account.cwl
inputs:
- id: in_nebulizer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_create_user
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_email
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_public_name
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_user
- account
