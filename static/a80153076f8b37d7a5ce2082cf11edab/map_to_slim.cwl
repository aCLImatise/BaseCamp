class: CommandLineTool
id: map_to_slim.py.cwl
inputs:
- id: go_obo_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: go_slim_obo_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: term
  doc: a term (association id) to map to slim IDs. This can not be used together with
    --association_file
  type: string
  inputBinding:
    prefix: --term
- id: association_file
  doc: the file of protein products and their associations to be mapped to GO slim
    terms. This can not be used together with --term
  type: string
  inputBinding:
    prefix: --association_file
- id: slim_out
  doc: One of `direct` or `all`. Defines whether the output should contain all slim
    terms (all ancestors) or only direct slim terms (only direct ancestors)
  type: string
  inputBinding:
    prefix: --slim_out
outputs: []
cwlVersion: v1.1
baseCommand:
- map_to_slim.py
