class: CommandLineTool
id: ../../../srf_index_hash.cwl
inputs:
- id: check_existing_index
  doc: check an existing index, don't re-index
  type: boolean
  inputBinding:
    prefix: -c
- id: srf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_index_hash
