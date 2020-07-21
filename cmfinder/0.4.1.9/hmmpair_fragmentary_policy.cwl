class: CommandLineTool
id: ../../../hmmpair_fragmentary_policy.cwl
inputs:
- id: hmm_pair
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sto_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_non_canonical_pair_freq
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: fragmentary_policy
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: size_of_poly_n_flanking_seqs_in_forward_prob_calculations
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: uniform_distribution_of_profile_hmm_starts_and_ends
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmpair
- fragmentary-policy
