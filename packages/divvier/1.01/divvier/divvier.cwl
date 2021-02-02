class: CommandLineTool
id: divvier.cwl
inputs:
- id: in_divvy
  doc: ': do standard divvying (DEFAULT)'
  type: boolean
  inputBinding:
    prefix: -divvy
- id: in_partial
  doc: ': do partial filtering by testing removal of individual characters'
  type: boolean
  inputBinding:
    prefix: -partial
- id: in_thresh
  doc: ': set the threshold for divvying to X (DEFAULT divvying = 0.801; partial =
    0.774)'
  type: double
  inputBinding:
    prefix: -thresh
- id: in_approx
  doc: ': minimum number of characters tested in a split during divvying (DEFAULT
    X = 10)'
  type: long
  inputBinding:
    prefix: -approx
- id: in_check_splits
  doc: ": go through sequence and ensure there's a pair for every split. Can be slow"
  type: boolean
  inputBinding:
    prefix: -checksplits
- id: in_hmm_approx
  doc: ': Do the pairHMM bounding approximation (DEFAULT)'
  type: boolean
  inputBinding:
    prefix: -HMMapprox
- id: in_hmm_exact
  doc: ': Do the full pairHMM and ignore bounding'
  type: boolean
  inputBinding:
    prefix: -HMMexact
- id: in_min_col
  doc: ': Minimum number of characters in a column to output when divvying/filtering
    (DEFAULT X = 2)'
  type: long
  inputBinding:
    prefix: -mincol
- id: in_divvy_gap
  doc: ': Output a gap instead of the static * character so divvied MSAs can be used
    in phylogeny program'
  type: boolean
  inputBinding:
    prefix: -divvygap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- divvier
