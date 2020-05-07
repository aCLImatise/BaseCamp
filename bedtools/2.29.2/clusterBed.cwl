class: CommandLineTool
id: clusterBed.cwl
inputs:
- id: s
  doc: Force strandedness.  That is, only merge features that are the same strand.
    - By default, merging is done without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: Maximum distance between features allowed for features to be merged. - Def.
    0. That is, overlapping & book-ended features are merged. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- clusterBed
