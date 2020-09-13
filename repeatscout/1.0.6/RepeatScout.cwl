class: CommandLineTool
id: ../../../RepeatScout.cwl
inputs:
- id: in_size_region_extend
  doc: '# size of region to extend left or right (10000)'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_match
  doc: '# reward for a match (+1)'
  type: boolean
  inputBinding:
    prefix: -match
- id: in_mismatch
  doc: '# penalty for a mismatch (-1)'
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_gap
  doc: '# penalty for a gap (-5)'
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_max_gap
  doc: '# maximum number of gaps allowed (5)'
  type: boolean
  inputBinding:
    prefix: -maxgap
- id: in_max_occurrences
  doc: '# cap on the number of sequences to align (10,000)'
  type: boolean
  inputBinding:
    prefix: -maxoccurrences
- id: in_max_repeats
  doc: '# stop work after reporting this number of repeats (10000)'
  type: boolean
  inputBinding:
    prefix: -maxrepeats
- id: in_cap_penalty
  doc: '# cap on penalty for exiting alignment of a sequence (-20)'
  type: boolean
  inputBinding:
    prefix: -cappenalty
- id: in_tandem_dist
  doc: '# of bases that must intervene between two l-mers for both to be counted (500)'
  type: boolean
  inputBinding:
    prefix: -tandemdist
- id: in_min_thresh
  doc: '# stop if fewer than this number of l-mers are found in the seeding phase
    (3)'
  type: boolean
  inputBinding:
    prefix: -minthresh
- id: in_min_improvement
  doc: '# amount that a the alignment needs to improve each step to be considered
    progress (3)'
  type: boolean
  inputBinding:
    prefix: -minimprovement
- id: in_stop_after
  doc: '# stop the alignment after this number of no-progress columns (100)'
  type: boolean
  inputBinding:
    prefix: -stopafter
- id: in_good_length
  doc: '# minimum required length for a sequence to be reported (50)'
  type: boolean
  inputBinding:
    prefix: -goodlength
- id: in_max_entropy
  doc: '# entropy (complexity) threshold for an l-mer to be considered (-.7)'
  type: boolean
  inputBinding:
    prefix: -maxentropy
- id: in_how_verbose_you
  doc: '[v[v[v]]] How verbose do you want it to be?  -vvvv is super-verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_var_15
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_freq
  doc: ''
  type: string
  inputBinding:
    prefix: -freq
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: -output
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    prefix: -sequence
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RepeatScout
