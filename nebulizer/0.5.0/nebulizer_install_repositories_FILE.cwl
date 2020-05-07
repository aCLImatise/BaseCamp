class: CommandLineTool
id: nebulizer_install_repositories_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- install_repositories
- FILE
