class: CommandLineTool
id: nebulizer_create_library.cwl
inputs:
- id: in_description
  doc: description of the new library
  type: string
  inputBinding:
    prefix: --description
- id: in_synopsis
  doc: synopsis text for the new library
  type: string
  inputBinding:
    prefix: --synopsis
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library
