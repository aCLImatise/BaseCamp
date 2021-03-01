class: CommandLineTool
id: nebulizer_create_users_from_file_account..cwl
inputs:
- id: in_nebulizer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_create_users_from_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_users_from_file
- account.
