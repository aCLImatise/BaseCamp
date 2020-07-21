class: CommandLineTool
id: ../../../miniasm.cwl
inputs:
- id: prefilter_clearly_contained
  doc: prefilter clearly contained reads (2-pass required)
  type: boolean
  inputBinding:
    prefix: -R
- id: min_match_length
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: min_identity
  doc: min identity [0.05]
  type: double
  inputBinding:
    prefix: -i
- id: min_span
  doc: min span [2000]
  type: long
  inputBinding:
    prefix: -s
- id: min_coverage
  doc: min coverage [3]
  type: long
  inputBinding:
    prefix: -c
- id: min_overlap
  doc: min overlap [same as -s]
  type: long
  inputBinding:
    prefix: -o
- id: max_hang_length
  doc: max over hang length [0]
  type: long
  inputBinding:
    prefix: -h
- id: min_endtoend_match
  doc: min end-to-end match ratio [0.8]
  type: double
  inputBinding:
    prefix: -I
- id: max_gap_differences
  doc: max gap differences between reads for trans-reduction [1000]
  type: long
  inputBinding:
    prefix: -g
- id: max_distance_bubble
  doc: max distance for bubble popping [50000]
  type: long
  inputBinding:
    prefix: -d
- id: small_unitig_threshold
  doc: small unitig threshold [4]
  type: long
  inputBinding:
    prefix: -e
- id: read_sequences
  doc: read sequences []
  type: File
  inputBinding:
    prefix: -f
- id: rounds_short_overlap
  doc: rounds of short overlap removal [3]
  type: long
  inputBinding:
    prefix: -n
- id: max_min_ratio
  doc: max and min overlap drop ratio [0.7,0.5]
  type:
  - double
  inputBinding:
    prefix: -r
- id: aggressive_overlap_drop
  doc: aggressive overlap drop ratio in the end [0.8]
  type: double
  inputBinding:
    prefix: -F
- id: output_information_bed
  doc: 'output information: bed, paf, sg or ug [ug]'
  type: string
  inputBinding:
    prefix: -p
- id: directions_arc_present
  doc: both directions of an arc are present in input
  type: boolean
  inputBinding:
    prefix: -b
- id: one
  doc: skip 1-pass read selection
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: skip 2-pass read selection
  type: boolean
  inputBinding:
    prefix: '-2'
- id: print_version_number
  doc: print version number
  type: boolean
  inputBinding:
    prefix: -V
- id: in_dot_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- miniasm
