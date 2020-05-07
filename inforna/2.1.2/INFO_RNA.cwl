class: CommandLineTool
id: INFO_RNA.cwl
inputs:
- id: c
  doc: '"constraints"        Constraining sequence given in IUPAC code.'
  type: boolean
  inputBinding:
    prefix: -c
- id: r
  doc: random initializing sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: '[ACGUMRWSYKVHDBN]     Give the assignment (in IUPAC code) where free bases
    in loop regions (that give no energy fraction) are set to.'
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: '"allowed mismatches"         binary vector, "1" means a mismatch conc. the
    constraints is allowed, "0" means a mismatch is forbidden'
  type: boolean
  inputBinding:
    prefix: -v
- id: n
  doc: mismatch number         Maximal number of allowed mismatches in a given interval.
    If nothing further is given, the interval  includes the whole sequence.
  type: long
  inputBinding:
    prefix: -n
- id: f
  doc: '[mp]          Use minimum energy (-Fm) (default), partition function folding
    (-Fp) or both (-Fmp).'
  type: boolean
  inputBinding:
    prefix: -F
- id: r
  doc: '[repeats]     Number of repeating the local search step.'
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: 'Search strategy used during the local search step:  1 - adaptive walk 2 -
    full local search 3 - stochastic local search (default)'
  type: string
  inputBinding:
    prefix: -S
- id: m
  doc: Kind of counting the step during the local search. Here, only accepted mutations
    are counted, while usually all tested  neighbors are counted.
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: The maximal number of step during the stochastic local search is given as product
    of the structure length and a  multiplier. The multiplier is set to 10 by default.
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: choice      Kind of order the candidate neighbors during the local search.
    1 - randomly 2 - energy dependent (default)
  type: string
  inputBinding:
    prefix: -N
- id: p
  doc: Probability to accept worse neighbors during the stochastic local search. It
    is set to 0.1 by default.
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- INFO-RNA
