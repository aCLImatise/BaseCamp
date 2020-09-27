class: CommandLineTool
id: hmm_tweak.cwl
inputs:
- id: in_var_0
  doc: "Operate on transitions *from* states corresponding to the\nspecified category\
    \ names (default all)"
  type: string
  inputBinding:
    prefix: -f
- id: in_var_1
  doc: "Operate on transitions *to* states corresponding to the\nspecified category\
    \ names (default all)"
  type: string
  inputBinding:
    prefix: -t
- id: in_multiply_transition_probabilities
  doc: Multiply transition probabilities by the specified factor.
  type: string
  inputBinding:
    prefix: -m
- id: in_add_specified_constant
  doc: Add the specified constant to transition probabilities.
  type: string
  inputBinding:
    prefix: -a
- id: in_set_transition_probabilities
  doc: Set transition probabilities equal to the specified value.
  type: string
  inputBinding:
    prefix: -e
- id: in_assume_phylohmm_model
  doc: "Assume a phylo-HMM indel model for states corresponding to\nthe specified\
    \ category names."
  type: string
  inputBinding:
    prefix: -i
- id: in_required_i_assume
  doc: (Required with -i) Assume given tree topology (.nh file).
  type: File
  inputBinding:
    prefix: -u
- id: in_use_from_states
  doc: "(For use with -i) Operate on transitions from states corresp.\nto the specified\
    \ gap-pattern numbers (ANDed with -f)."
  type: string
  inputBinding:
    prefix: -F
- id: in_use_i_to
  doc: "(For use with -i) Operate on transitions to states corresp.\nto the specified\
    \ gap-pattern numbers (ANDed with -t)."
  type: string
  inputBinding:
    prefix: -T
- id: in_equalize_transition_probabilities
  doc: "Equalize transition probabilities.  Set all transition\nprobabilities indicated\
    \ by -f/-t/-F/-T to their overall\naverage value.  Options -m and/or -a can be\
    \ used to adjust\nthis average value."
  type: boolean
  inputBinding:
    prefix: -z
- id: in_restrict_successive_transitions
  doc: Restrict to successive transitions within a category range.
  type: boolean
  inputBinding:
    prefix: -R
- id: in_z_compute_separate
  doc: "Like -z, except compute separate averages for five classes\nof transitions,\
    \ based on the gap patterns of the states\ninvolved: between null gap patterns,\
    \ between equal\nnon-null gap patterns, from null to non-null gap\npatterns, from\
    \ non-null to null gap patterns, and all\nothers.  Useful with the indel model\
    \ when training data\nis sparse (e.g., for splice-site states).  Options -m and\
    \ -a\nwill be applied to transitions of the 3rd and 5th classes\ndescribed."
  type: boolean
  inputBinding:
    prefix: -y
- id: in_file_dot_hmm
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_cmap_do_tcm
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmm_tweak
