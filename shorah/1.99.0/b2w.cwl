class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/b2w.cwl
inputs:
- id: window_length_int
  doc: ': window length (INT)'
  type: boolean
  inputBinding:
    prefix: -w
- id: _increment_int
  doc: ': increment (INT)'
  type: boolean
  inputBinding:
    prefix: -i
- id: minimum_overlap_int
  doc: ': minimum overlap (INT)'
  type: boolean
  inputBinding:
    prefix: -m
- id: max_reads_starting
  doc: ': max reads starting at a position (INT)'
  type: boolean
  inputBinding:
    prefix: -x
- id: coverage_threshold_windows
  doc: ': coverage threshold. Omit windows with low coverage (INT)'
  type: boolean
  inputBinding:
    prefix: -c
- id: drop_snvs_behaviour
  doc: ': drop SNVs that are adjacent to insertions/deletions (alternate behaviour)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- b2w
