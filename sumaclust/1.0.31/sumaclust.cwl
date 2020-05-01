#!/usr/bin/env cwl-runner

baseCommand:
- sumaclust
class: CommandLineTool
cwlVersion: v1.0
id: sumaclust
inputs:
- doc: ''
  id: dataset
  inputBinding:
    position: 0
  type: string
- doc: ': Reference sequence length is the shortest. '
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': Reference sequence length is the largest. '
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: ': Reference sequence length is the alignment length (default). '
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': Score is normalized by reference sequence length (default).'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: ': Raw score, not normalized. '
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': Score is expressed in distance (default : score is expressed in similarity). '
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '##.## : Score threshold for clustering. If the score is normalized and expressed
    in similarity (default), it is an identity, e.g. 0.95 for an identity of 95%.
    If the score is normalized and expressed in distance, it is (1.0 - identity),
    e.g. 0.05 for an identity of 95%. If the score is not normalized and expressed
    in similarity, it is the length of the Longest Common Subsequence. If the score
    is not normalized and expressed in distance, it is (reference length - LCS length).
    Only sequences with a similarity above ##.## with the center sequence of a cluster
    are assigned to that cluster. Default: 0.97.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ": Exact option : A sequence is assigned to the cluster with the center sequence\
    \ presenting the highest similarity score > threshold, as opposed to the default\
    \ 'fast' option where a sequence is assigned to the first cluster found with a\
    \ center sequence presenting a score > threshold."
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '##    : Maximum ratio between the counts of two sequences so that the less
    abundant one can be considered as a variant of the more abundant one. Default:
    1.0.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '##    : Multithreading with ## threads using openMP.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta\
    \ header of each sequence, except for the count that can be computed (default\
    \ : sorting by count)."
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': Sorting is in ascending order (default : descending).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ": n's are replaced with a's (default: sequences with n's are discarded)."
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '###   : Output of the OTU table in BIOM format is activated, and written to
    file ###.'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: '###   : Output of the OTU map (observation map) is activated, and written
    to file ###.'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: '###   : Output in FASTA format is written to file ### instead of standard
    output.'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ': Output in FASTA format is deactivated.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
