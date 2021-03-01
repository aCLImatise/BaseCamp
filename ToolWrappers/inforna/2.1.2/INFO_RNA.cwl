class: CommandLineTool
id: INFO_RNA.cwl
inputs:
- id: in_constraining_sequence_given
  doc: '"constraints"        Constraining sequence given in IUPAC code.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_random_initializing_sequence
  doc: random initializing sequence
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_give_assignment_regions
  doc: "[ACGUMRWSYKVHDBN]     Give the assignment (in IUPAC code) where free bases\n\
    in loop regions (that give no energy fraction) are\nset to."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_binary_vector_means
  doc: "\"allowed mismatches\"         binary vector,\n\"1\" means a mismatch conc.\
    \ the constraints is allowed,\n\"0\" means a mismatch is forbidden"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_mismatch_number_maximal
  doc: "mismatch number         Maximal number of allowed mismatches in a given\n\
    interval. If nothing further is given, the interval\nincludes the whole sequence."
  type: long?
  inputBinding:
    prefix: -n
- id: in_use_default_partition
  doc: "[mp]          Use minimum energy (-Fm) (default), partition function\nfolding\
    \ (-Fp) or both (-Fmp)."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_number_repeating_step
  doc: '[repeats]     Number of repeating the local search step.'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_search_strategy_used
  doc: "Search strategy used during the local search step:\n1 - adaptive walk\n2 -\
    \ full local search\n3 - stochastic local search (default)"
  type: long?
  inputBinding:
    prefix: -S
- id: in_kind_counting_step
  doc: "Kind of counting the step during the local search. Here, only\naccepted mutations\
    \ are counted, while usually all tested\nneighbors are counted."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maximal_number_step
  doc: "The maximal number of step during the stochastic local\nsearch is given as\
    \ product of the structure length and a\nmultiplier. The multiplier is set to\
    \ 10 by default."
  type: long?
  inputBinding:
    prefix: -s
- id: in_choice_candidate_neighbors
  doc: choice      Kind of order the candidate neighbors during the local
  type: string?
  inputBinding:
    prefix: -N
- id: in_probability_accept_neighbors
  doc: "Probability to accept worse neighbors during the stochastic\nlocal search.\
    \ It is set to 0.1 by default.\n"
  type: double?
  inputBinding:
    prefix: -p
- id: in_search_dot
  doc: "1 - randomly\n2 - energy dependent (default)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- INFO-RNA
