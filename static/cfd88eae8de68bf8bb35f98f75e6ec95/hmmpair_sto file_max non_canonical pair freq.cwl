class: CommandLineTool
id: hmmpair_sto file_max non_canonical pair freq.cwl
inputs:
- id: in_fragmentary_policy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_size_of_poly_n_flanking_seqs_in_forward_prob_calculations
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_uniform_distribution_of_profile_hmm_starts_and_ends
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmpair
- sto file
- max non-canonical pair freq
