class: CommandLineTool
id: sumaclust.cwl
inputs:
- id: dataset
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: ': Reference sequence length is the shortest. '
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: ': Reference sequence length is the largest. '
  type: boolean
  inputBinding:
    prefix: -L
- id: a
  doc: ': Reference sequence length is the alignment length (default). '
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: ': Score is normalized by reference sequence length (default).'
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: ': Raw score, not normalized. '
  type: boolean
  inputBinding:
    prefix: -r
- id: d
  doc: ': Score is expressed in distance (default : score is expressed in similarity). '
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: '##.## : Score threshold for clustering. If the score is normalized and expressed
    in similarity (default), it is an identity, e.g. 0.95 for an identity of 95%.
    If the score is normalized and expressed in distance, it is (1.0 - identity),
    e.g. 0.05 for an identity of 95%. If the score is not normalized and expressed
    in similarity, it is the length of the Longest Common Subsequence. If the score
    is not normalized and expressed in distance, it is (reference length - LCS length).
    Only sequences with a similarity above ##.## with the center sequence of a cluster
    are assigned to that cluster. Default: 0.97.'
  type: boolean
  inputBinding:
    prefix: -t
- id: e
  doc: ": Exact option : A sequence is assigned to the cluster with the center sequence\
    \ presenting the highest similarity score > threshold, as opposed to the default\
    \ 'fast' option where a sequence is assigned to the first cluster found with a\
    \ center sequence presenting a score > threshold."
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: '##    : Maximum ratio between the counts of two sequences so that the less
    abundant one can be considered as a variant of the more abundant one. Default:
    1.0.'
  type: boolean
  inputBinding:
    prefix: -R
- id: p
  doc: '##    : Multithreading with ## threads using openMP.'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta\
    \ header of each sequence, except for the count that can be computed (default\
    \ : sorting by count)."
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: ': Sorting is in ascending order (default : descending).'
  type: boolean
  inputBinding:
    prefix: -o
- id: g
  doc: ": n's are replaced with a's (default: sequences with n's are discarded)."
  type: boolean
  inputBinding:
    prefix: -g
- id: b
  doc: '###   : Output of the OTU table in BIOM format is activated, and written to
    file ###.'
  type: boolean
  inputBinding:
    prefix: -B
- id: o
  doc: '###   : Output of the OTU map (observation map) is activated, and written
    to file ###.'
  type: boolean
  inputBinding:
    prefix: -O
- id: f
  doc: '###   : Output in FASTA format is written to file ### instead of standard
    output.'
  type: boolean
  inputBinding:
    prefix: -F
- id: f
  doc: ': Output in FASTA format is deactivated.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- sumaclust
