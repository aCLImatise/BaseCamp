class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nebulizer_create_library.cwl
inputs:
- id: description
  doc: description of the new library
  type: string
  inputBinding:
    prefix: --description
- id: synopsis
  doc: synopsis text for the new library
  type: string
  inputBinding:
    prefix: --synopsis
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library
