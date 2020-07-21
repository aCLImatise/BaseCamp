class: CommandLineTool
id: ../../../treebest_pwalign.cwl
inputs:
- id: generate_full_alignment
  doc: generate full alignment
  type: boolean
  inputBinding:
    prefix: -f
- id: apply_matrix_mean
  doc: do not apply matrix mean in local alignment
  type: boolean
  inputBinding:
    prefix: -a
- id: just_calculate_boundaries
  doc: just calculate alignment boundaries
  type: boolean
  inputBinding:
    prefix: -d
- id: gap_open_penalty
  doc: gap open penalty
  type: string
  inputBinding:
    prefix: -o
- id: gap_extension_penalty
  doc: gap extension penalty
  type: string
  inputBinding:
    prefix: -e
- id: gap_end_penalty
  doc: gap end penalty for nt2nt or aa2aa
  type: string
  inputBinding:
    prefix: -n
- id: frameshift_penalty_aant
  doc: frame-shift penalty for aa2nt
  type: string
  inputBinding:
    prefix: -s
- id: good_splicing_penalty
  doc: good splicing penalty
  type: string
  inputBinding:
    prefix: -g
- id: bandwidth
  doc: band-width
  type: string
  inputBinding:
    prefix: -w
- id: bad_splicing_penalty
  doc: bad splicing penalty
  type: string
  inputBinding:
    prefix: -b
- id: output_miscellaneous_information
  doc: output miscellaneous information
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- pwalign
