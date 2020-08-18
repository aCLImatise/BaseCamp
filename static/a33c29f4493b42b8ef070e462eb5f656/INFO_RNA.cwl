class: CommandLineTool
id: ../../../INFO_RNA.cwl
inputs:
- id: constraining_sequence_given
  doc: '"constraints"        Constraining sequence given in IUPAC code.'
  type: boolean
  inputBinding:
    prefix: -c
- id: random_initializing_sequence
  doc: random initializing sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: give_assignment_iupac
  doc: '[ACGUMRWSYKVHDBN]     Give the assignment (in IUPAC code) where free bases
    in loop regions (that give no energy fraction) are set to.'
  type: boolean
  inputBinding:
    prefix: -f
- id: means_mismatch_forbidden
  doc: '"allowed mismatches"         binary vector, "1" means a mismatch conc. the
    constraints is allowed, "0" means a mismatch is forbidden'
  type: boolean
  inputBinding:
    prefix: -v
- id: mismatch_number_maximal
  doc: mismatch number         Maximal number of allowed mismatches in a given interval.
    If nothing further is given, the interval  includes the whole sequence.
  type: long
  inputBinding:
    prefix: -n
- id: use_minimum_function
  doc: '[mp]          Use minimum energy (-Fm) (default), partition function folding
    (-Fp) or both (-Fmp).'
  type: boolean
  inputBinding:
    prefix: -F
- id: number_repeating_step
  doc: '[repeats]     Number of repeating the local search step.'
  type: boolean
  inputBinding:
    prefix: -R
- id: search_strategy_used
  doc: 'Search strategy used during the local search step:  1 - adaptive walk 2 -
    full local search 3 - stochastic local search (default)'
  type: string
  inputBinding:
    prefix: -S
- id: kind_of_counting
  doc: Kind of counting the step during the local search. Here, only accepted mutations
    are counted, while usually all tested  neighbors are counted.
  type: boolean
  inputBinding:
    prefix: -m
- id: maximal_number_step
  doc: The maximal number of step during the stochastic local search is given as product
    of the structure length and a  multiplier. The multiplier is set to 10 by default.
  type: string
  inputBinding:
    prefix: -s
- id: choice_kind_neighbors
  doc: choice      Kind of order the candidate neighbors during the local search.
    1 - randomly 2 - energy dependent (default)
  type: string
  inputBinding:
    prefix: -N
- id: probability_accept_neighbors
  doc: Probability to accept worse neighbors during the stochastic local search. It
    is set to 0.1 by default.
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- INFO-RNA
