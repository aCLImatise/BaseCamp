class: CommandLineTool
id: nebulizer_create_users_from_file_OPTIONS_FILE.cwl
inputs:
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
- OPTIONS
- FILE
