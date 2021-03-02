class: CommandLineTool
id: b2w.cwl
inputs:
- id: in_window_length_int
  doc: ': window length (INT)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in__increment_int
  doc: ': increment (INT)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_minimum_overlap_int
  doc: ': minimum overlap (INT)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_max_reads_starting
  doc: ': max reads starting at a position (INT)'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_coverage_threshold_windows
  doc: ': coverage threshold. Omit windows with low coverage (INT)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_drop_snvs_are
  doc: ': drop SNVs that are adjacent to insertions/deletions (alternate behaviour)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_region
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- b2w
