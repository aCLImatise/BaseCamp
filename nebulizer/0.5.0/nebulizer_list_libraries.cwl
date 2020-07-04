class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nebulizer_list_libraries.cwl
inputs:
- id: use_long_format
  doc: use a long listing format that includes ids, descriptions, file sizes, dbkeys
    and paths)
  type: boolean
  inputBinding:
    prefix: -l
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
- list_libraries
