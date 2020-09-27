class: CommandLineTool
id: miniasm.cwl
inputs:
- id: in_prefilter_clearly_contained
  doc: prefilter clearly contained reads (2-pass required)
  type: boolean
  inputBinding:
    prefix: -R
- id: in_min_match_length
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: in_min_identity
  doc: min identity [0.05]
  type: double
  inputBinding:
    prefix: -i
- id: in_min_span
  doc: min span [2000]
  type: long
  inputBinding:
    prefix: -s
- id: in_min_coverage
  doc: min coverage [3]
  type: long
  inputBinding:
    prefix: -c
- id: in_min_overlap
  doc: min overlap [same as -s]
  type: long
  inputBinding:
    prefix: -o
- id: in_max_hang_length
  doc: max over hang length [0]
  type: long
  inputBinding:
    prefix: -h
- id: in_min_endtoend_match
  doc: min end-to-end match ratio [0.8]
  type: double
  inputBinding:
    prefix: -I
- id: in_max_gap_differences
  doc: max gap differences between reads for trans-reduction [1000]
  type: long
  inputBinding:
    prefix: -g
- id: in_max_distance_bubble
  doc: max distance for bubble popping [50000]
  type: long
  inputBinding:
    prefix: -d
- id: in_small_unitig_threshold
  doc: small unitig threshold [4]
  type: long
  inputBinding:
    prefix: -e
- id: in_read_sequences
  doc: read sequences []
  type: File
  inputBinding:
    prefix: -f
- id: in_rounds_short_overlap
  doc: rounds of short overlap removal [3]
  type: long
  inputBinding:
    prefix: -n
- id: in_max_min_overlap
  doc: max and min overlap drop ratio [0.7,0.5]
  type:
  - double
  inputBinding:
    prefix: -r
- id: in_aggressive_overlap_drop
  doc: aggressive overlap drop ratio in the end [0.8]
  type: double
  inputBinding:
    prefix: -F
- id: in_output_information_bed
  doc: 'output information: bed, paf, sg or ug [ug]'
  type: string
  inputBinding:
    prefix: -p
- id: in_directions_arc_present
  doc: both directions of an arc are present in input
  type: boolean
  inputBinding:
    prefix: -b
- id: in_one
  doc: skip 1-pass read selection
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: skip 2-pass read selection
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_print_version_number
  doc: print version number
  type: boolean
  inputBinding:
    prefix: -V
- id: in_in_dot_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- miniasm
