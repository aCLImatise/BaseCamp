class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmm_tweak.cwl
inputs:
- id: var_0
  doc: Operate on transitions *from* states corresponding to the  specified category
    names (default all)
  type: string
  inputBinding:
    prefix: -f
- id: var_1
  doc: Operate on transitions *to* states corresponding to the  specified category
    names (default all)
  type: string
  inputBinding:
    prefix: -t
- id: multiply_transition_probabilities
  doc: Multiply transition probabilities by the specified factor.
  type: string
  inputBinding:
    prefix: -m
- id: add_specified_constant
  doc: Add the specified constant to transition probabilities.
  type: string
  inputBinding:
    prefix: -a
- id: set_transition_probabilities
  doc: Set transition probabilities equal to the specified value.
  type: string
  inputBinding:
    prefix: -e
- id: assume_phylohmm_model
  doc: Assume a phylo-HMM indel model for states corresponding to  the specified category
    names.
  type: string
  inputBinding:
    prefix: -i
- id: required_given_topology
  doc: (Required with -i) Assume given tree topology (.nh file).
  type: string
  inputBinding:
    prefix: -u
- id: from_states_corresp
  doc: (For use with -i) Operate on transitions from states corresp. to the specified
    gap-pattern numbers (ANDed with -f).
  type: string
  inputBinding:
    prefix: -F
- id: use_i_to
  doc: (For use with -i) Operate on transitions to states corresp. to the specified
    gap-pattern numbers (ANDed with -t).
  type: string
  inputBinding:
    prefix: -T
- id: equalize_transition_probabilities
  doc: Equalize transition probabilities.  Set all transition probabilities indicated
    by -f/-t/-F/-T to their overall average value.  Options -m and/or -a can be used
    to adjust this average value.
  type: boolean
  inputBinding:
    prefix: -z
- id: restrict_successive_transitions
  doc: Restrict to successive transitions within a category range.
  type: boolean
  inputBinding:
    prefix: -R
- id: z_compute_separate
  doc: 'Like -z, except compute separate averages for five classes of transitions,
    based on the gap patterns of the states involved: between null gap patterns, between
    equal non-null gap patterns, from null to non-null gap patterns, from non-null
    to null gap patterns, and all others.  Useful with the indel model when training
    data is sparse (e.g., for splice-site states).  Options -m and -a will be applied
    to transitions of the 3rd and 5th classes described.'
  type: boolean
  inputBinding:
    prefix: -y
- id: file_dot_hmm
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: cmap_do_tcm
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_tweak
