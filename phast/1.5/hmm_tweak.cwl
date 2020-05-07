class: CommandLineTool
id: hmm_tweak.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_hmm
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: cmap_cm
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: f
  doc: Operate on transitions *from* states corresponding to the  specified category
    names (default all)
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: Operate on transitions *to* states corresponding to the  specified category
    names (default all)
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: Multiply transition probabilities by the specified factor.
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: Add the specified constant to transition probabilities.
  type: string
  inputBinding:
    prefix: -a
- id: e
  doc: Set transition probabilities equal to the specified value.
  type: string
  inputBinding:
    prefix: -e
- id: i
  doc: Assume a phylo-HMM indel model for states corresponding to  the specified category
    names.
  type: string
  inputBinding:
    prefix: -i
- id: u
  doc: (Required with -i) Assume given tree topology (.nh file).
  type: string
  inputBinding:
    prefix: -u
- id: f
  doc: (For use with -i) Operate on transitions from states corresp. to the specified
    gap-pattern numbers (ANDed with -f).
  type: string
  inputBinding:
    prefix: -F
- id: t
  doc: (For use with -i) Operate on transitions to states corresp. to the specified
    gap-pattern numbers (ANDed with -t).
  type: string
  inputBinding:
    prefix: -T
- id: z
  doc: Equalize transition probabilities.  Set all transition probabilities indicated
    by -f/-t/-F/-T to their overall average value.  Options -m and/or -a can be used
    to adjust this average value.
  type: boolean
  inputBinding:
    prefix: -z
- id: r
  doc: Restrict to successive transitions within a category range.
  type: boolean
  inputBinding:
    prefix: -R
- id: y
  doc: 'Like -z, except compute separate averages for five classes of transitions,
    based on the gap patterns of the states involved: between null gap patterns, between
    equal non-null gap patterns, from null to non-null gap patterns, from non-null
    to null gap patterns, and all others.  Useful with the indel model when training
    data is sparse (e.g., for splice-site states).  Options -m and -a will be applied
    to transitions of the 3rd and 5th classes described.'
  type: boolean
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_tweak
