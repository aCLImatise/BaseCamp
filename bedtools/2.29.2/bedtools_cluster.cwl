class: CommandLineTool
id: ../../../bedtools_cluster.cwl
inputs:
- id: force_strandedness_only
  doc: Force strandedness.  That is, only merge features that are the same strand.
    - By default, merging is done without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: maximum_distance_features
  doc: Maximum distance between features allowed for features to be merged. - Def.
    0. That is, overlapping & book-ended features are merged. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- cluster
