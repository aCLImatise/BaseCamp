class: CommandLineTool
id: nebulizer_create_library_OPTIONS_NAME.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library
- OPTIONS
- NAME
