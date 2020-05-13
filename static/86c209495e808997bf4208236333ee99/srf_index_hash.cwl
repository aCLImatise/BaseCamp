class: CommandLineTool
id: srf_index_hash.cwl
inputs:
- id: c
  doc: check an existing index, don't re-index
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_index_hash
