class: CommandLineTool
id: delta_filter.cwl
inputs:
- id: in__alignment_allowing
  doc: "1-to-1 alignment allowing for rearrangements\n(intersection of -r and -q alignments)"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in__global_alignment
  doc: 1-to-1 global alignment not allowing rearrangements
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_set_alignment_identity
  doc: Set the minimum alignment identity [0, 100], default 0
  type: double?
  inputBinding:
    prefix: -i
- id: in_set_length_default
  doc: Set the minimum alignment length, default 0
  type: long?
  inputBinding:
    prefix: -l
- id: in_manytomany_alignment_allowing
  doc: "Many-to-many alignment allowing for rearrangements\n(union of -r and -q alignments)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maps_position_overlaps
  doc: "Maps each position of each query to its best hit in\nthe reference, allowing\
    \ for reference overlaps"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_maps_position_query
  doc: "Maps each position of each reference to its best hit\nin the query, allowing\
    \ for query overlaps"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_set_alignment_uniqueness
  doc: "Set the minimum alignment uniqueness, i.e. percent of\nthe alignment matching\
    \ to unique reference AND query\nsequence [0, 100], default 0"
  type: double?
  inputBinding:
    prefix: -u
- id: in_set_maximum_alignment
  doc: "Set the maximum alignment overlap for -r and -q options\nas a percent of the\
    \ alignment length [0, 100], default 100"
  type: double?
  inputBinding:
    prefix: -o
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- delta-filter
