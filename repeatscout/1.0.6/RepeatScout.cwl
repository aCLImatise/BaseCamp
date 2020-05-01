#!/usr/bin/env cwl-runner

baseCommand:
- RepeatScout
class: CommandLineTool
cwlVersion: v1.0
id: repeatscout
inputs:
- doc: '# size of region to extend left or right (10000) '
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '# reward for a match (+1)  '
  id: match
  inputBinding:
    prefix: -match
  type: boolean
- doc: '# penalty for a mismatch (-1) '
  id: mismatch
  inputBinding:
    prefix: -mismatch
  type: boolean
- doc: '# penalty for a gap (-5)'
  id: gap
  inputBinding:
    prefix: -gap
  type: boolean
- doc: '# maximum number of gaps allowed (5) '
  id: max_gap
  inputBinding:
    prefix: -maxgap
  type: boolean
- doc: '# cap on the number of sequences to align (10,000) '
  id: max_occurrences
  inputBinding:
    prefix: -maxoccurrences
  type: boolean
- doc: '# stop work after reporting this number of repeats (10000)'
  id: max_repeats
  inputBinding:
    prefix: -maxrepeats
  type: boolean
- doc: '# cap on penalty for exiting alignment of a sequence (-20)'
  id: cap_penalty
  inputBinding:
    prefix: -cappenalty
  type: boolean
- doc: '# of bases that must intervene between two l-mers for both to be counted (500)'
  id: tandem_dist
  inputBinding:
    prefix: -tandemdist
  type: boolean
- doc: '# stop if fewer than this number of l-mers are found in the seeding phase
    (3)'
  id: min_thresh
  inputBinding:
    prefix: -minthresh
  type: boolean
- doc: '# amount that a the alignment needs to improve each step to be considered
    progress (3)'
  id: min_improvement
  inputBinding:
    prefix: -minimprovement
  type: boolean
- doc: '# stop the alignment after this number of no-progress columns (100)'
  id: stop_after
  inputBinding:
    prefix: -stopafter
  type: boolean
- doc: '# minimum required length for a sequence to be reported (50)'
  id: good_length
  inputBinding:
    prefix: -goodlength
  type: boolean
- doc: '# entropy (complexity) threshold for an l-mer to be considered (-.7)'
  id: max_entropy
  inputBinding:
    prefix: -maxentropy
  type: boolean
- doc: '[v[v[v]]] How verbose do you want it to be?  -vvvv is super-verbose.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
