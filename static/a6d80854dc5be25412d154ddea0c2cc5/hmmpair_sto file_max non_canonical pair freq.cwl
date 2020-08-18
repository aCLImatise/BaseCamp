class: CommandLineTool
id: ../../../hmmpair_sto file_max non_canonical pair freq.cwl
inputs:
- id: fragmentary_policy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: size_of_poly_n_flanking_seqs_in_forward_prob_calculations
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: uniform_distribution_of_profile_hmm_starts_and_ends
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmpair
- sto file
- max non-canonical pair freq
