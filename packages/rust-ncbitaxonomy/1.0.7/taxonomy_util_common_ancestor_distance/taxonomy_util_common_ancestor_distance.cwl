class: CommandLineTool
id: taxonomy_util_common_ancestor_distance.cwl
inputs:
- id: in_only_canonical
  doc: Only consider canonical taxonomic ranks
  type: boolean
  inputBinding:
    prefix: --only_canonical
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- common_ancestor_distance
