class: CommandLineTool
id: treebest_pwalign.cwl
inputs:
- id: in_generate_full_alignment
  doc: generate full alignment
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_apply_matrix_mean
  doc: do not apply matrix mean in local alignment
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_just_calculate_boundaries
  doc: just calculate alignment boundaries
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_gap_open_penalty
  doc: gap open penalty
  type: long?
  inputBinding:
    prefix: -o
- id: in_gap_extension_penalty
  doc: gap extension penalty
  type: long?
  inputBinding:
    prefix: -e
- id: in_gap_end_penalty
  doc: gap end penalty for nt2nt or aa2aa
  type: long?
  inputBinding:
    prefix: -n
- id: in_frameshift_penalty_aant
  doc: frame-shift penalty for aa2nt
  type: long?
  inputBinding:
    prefix: -s
- id: in_good_splicing_penalty
  doc: good splicing penalty
  type: long?
  inputBinding:
    prefix: -g
- id: in_bandwidth
  doc: band-width
  type: long?
  inputBinding:
    prefix: -w
- id: in_bad_splicing_penalty
  doc: bad splicing penalty
  type: long?
  inputBinding:
    prefix: -b
- id: in_output_miscellaneous_information
  doc: output miscellaneous information
  type: boolean?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treebest
- pwalign
