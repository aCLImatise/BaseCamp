class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/taxonomy_util_common_ancestor_distance.cwl
inputs:
- id: only_canonical
  doc: Only consider canonical taxonomic ranks
  type: boolean
  inputBinding:
    prefix: --only_canonical
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- common_ancestor_distance
