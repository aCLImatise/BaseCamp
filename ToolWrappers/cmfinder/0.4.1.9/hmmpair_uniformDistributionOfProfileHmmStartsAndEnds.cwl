class: CommandLineTool
id: hmmpair_uniformDistributionOfProfileHmmStartsAndEnds.cwl
inputs:
- id: in_hmm_pair
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sto_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_max_non_canonical_pair_freq
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_fragmentary_policy
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_size_of_poly_n_flanking_seqs_in_forward_prob_calculations
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_uniform_distribution_of_profile_hmm_starts_and_ends
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmpair
- uniformDistributionOfProfileHmmStartsAndEnds
