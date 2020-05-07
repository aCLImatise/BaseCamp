class: CommandLineTool
id: prank.cwl
inputs:
- id: f
  doc: '[equivalent]'
  type: boolean
  inputBinding:
    prefix: -F
- id: gap_rate
  doc: '=# [gap opening rate; default: dna 0.025 / prot 0.005]'
  type: boolean
  inputBinding:
    prefix: -gaprate
- id: gap_ext
  doc: '=# [gap extension probability; default: dna 0.75 / prot 0.5]'
  type: boolean
  inputBinding:
    prefix: -gapext
- id: codon
  doc: '[for coding DNA: use empirical codon model]'
  type: boolean
  inputBinding:
    prefix: -codon
- id: dna
  doc: '/ -protein [no autodetection: use dna or protein model]'
  type: boolean
  inputBinding:
    prefix: -DNA
- id: term_gap
  doc: '[penalise terminal gaps normally]'
  type: boolean
  inputBinding:
    prefix: -termgap
- id: no_missing
  doc: '[no missing data, use -F for terminal gaps ]'
  type: boolean
  inputBinding:
    prefix: -nomissing
- id: e
  doc: '[pre-aligned sequences; do not remove gaps]'
  type: boolean
  inputBinding:
    prefix: -e
- id: no_post
  doc: '[do not compute posterior support; default: compute]'
  type: boolean
  inputBinding:
    prefix: -nopost
- id: once
  doc: '[run only once; default: twice if no guidetree given]'
  type: boolean
  inputBinding:
    prefix: -once
- id: twice
  doc: '[run always twice]'
  type: boolean
  inputBinding:
    prefix: -twice
- id: use_logs
  doc: '[slower but should work for a greater number of sequences]'
  type: boolean
  inputBinding:
    prefix: -uselogs
- id: translate
  doc: '[translate to protein]'
  type: boolean
  inputBinding:
    prefix: -translate
- id: mt_translate
  doc: '[translate to protein using mt table]'
  type: boolean
  inputBinding:
    prefix: -mttranslate
- id: max_pair_dist
  doc: =# [maximum pairwise distance for matrix computation]
  type: boolean
  inputBinding:
    prefix: -maxpairdist
- id: convert
  doc: '[no alignment, just convert to another format]'
  type: boolean
  inputBinding:
    prefix: -convert
outputs: []
cwlVersion: v1.1
baseCommand:
- prank
