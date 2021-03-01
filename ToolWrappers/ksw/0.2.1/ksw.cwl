class: CommandLineTool
id: ksw.cwl
inputs:
- id: in_alignment_mode_local
  doc: 'The alignment mode: 0 - local, 1 - glocal, 2 - extend, 3 - global [0 - local]'
  type: long?
  inputBinding:
    prefix: -M
- id: in_the_match_score
  doc: The match score (>0) [1]
  type: long?
  inputBinding:
    prefix: -a
- id: in_the_mismatch_penalty
  doc: The mismatch penalty (>0) [3]
  type: long?
  inputBinding:
    prefix: -b
- id: in_gap_open_penalty
  doc: The gap open penalty (>=0) [5]
  type: long?
  inputBinding:
    prefix: -q
- id: in_gap_extend_penalty
  doc: The gap extend penalty (>0) [2]
  type: long?
  inputBinding:
    prefix: -r
- id: in_band_width_ksw
  doc: The band width (ksw only) [536870911]
  type: long?
  inputBinding:
    prefix: -w
- id: in_path_scoring_matrix
  doc: Path to the scoring matrix (4x4 or 5x5) [None]
  type: File?
  inputBinding:
    prefix: -m
- id: in_append_cigar_output
  doc: Append the cigar to the output [false]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_append_query_target
  doc: Append the query and target to the output [false]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_add_header_line
  doc: Add a header line to the output [false]
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_gaps_ksw_only
  doc: Right-align gaps (ksw only)[false]
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_output_offsetandlength_otherwise
  doc: Output offset-and-length, otherwise start-and-end (all zero-based)[false]
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_library_type_auto
  doc: 'The library type: 0 - auto, 1 - ksw2, 2 - parasail [0 - auto]'
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ksw
