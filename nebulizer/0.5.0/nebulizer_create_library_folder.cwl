class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nebulizer_create_library_folder.cwl
inputs:
- id: description
  doc: description of the new folder
  type: string
  inputBinding:
    prefix: --description
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library_folder
