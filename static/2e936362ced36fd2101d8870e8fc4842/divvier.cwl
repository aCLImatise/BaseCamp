class: CommandLineTool
id: divvier.cwl
inputs:
- id: divvy
  doc: ': do standard divvying (DEFAULT)'
  type: boolean
  inputBinding:
    prefix: -divvy
- id: partial
  doc: ': do partial filtering by testing removal of individual characters'
  type: boolean
  inputBinding:
    prefix: -partial
- id: thresh
  doc: ': set the threshold for divvying to X (DEFAULT divvying = 0.801; partial =
    0.774)'
  type: string
  inputBinding:
    prefix: -thresh
- id: approx
  doc: ': minimum number of characters tested in a split during divvying (DEFAULT
    X = 10)'
  type: string
  inputBinding:
    prefix: -approx
- id: check_splits
  doc: ": go through sequence and ensure there's a pair for every split. Can be slow"
  type: boolean
  inputBinding:
    prefix: -checksplits
- id: hmm_approx
  doc: ': Do the pairHMM bounding approximation (DEFAULT)'
  type: boolean
  inputBinding:
    prefix: -HMMapprox
- id: hmm_exact
  doc: ': Do the full pairHMM and ignore bounding'
  type: boolean
  inputBinding:
    prefix: -HMMexact
- id: min_col
  doc: ': Minimum number of characters in a column to output when divvying/filtering
    (DEFAULT X = 2)'
  type: string
  inputBinding:
    prefix: -mincol
- id: divvy_gap
  doc: ': Output a gap instead of the static * character so divvied MSAs can be used
    in phylogeny program'
  type: boolean
  inputBinding:
    prefix: -divvygap
outputs: []
cwlVersion: v1.1
baseCommand:
- divvier
