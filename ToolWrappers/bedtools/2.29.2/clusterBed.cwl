class: CommandLineTool
id: clusterBed.cwl
inputs:
- id: in_force_strandedness_is
  doc: "Force strandedness.  That is, only merge features\nthat are the same strand.\n\
    - By default, merging is done without respect to strand."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_maximum_distance_features
  doc: "Maximum distance between features allowed for features\nto be merged.\n- Def.\
    \ 0. That is, overlapping & book-ended features are merged.\n- (INTEGER)\n"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clusterBed
