class: CommandLineTool
id: prank.cwl
inputs:
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
- id: keep
  doc: '[keep alignment "as is" (e.g. for ancestor inference)]'
  type: boolean
  inputBinding:
    prefix: -keep
- id: iterate
  doc: =# [rounds of re-alignment iteration]
  type: boolean
  inputBinding:
    prefix: -iterate
- id: once
  doc: '[run only once; same as -iterate=1]'
  type: boolean
  inputBinding:
    prefix: -once
- id: prune_tree
  doc: '[prune guide tree branches with no sequence data]'
  type: boolean
  inputBinding:
    prefix: -prunetree
- id: prune_data
  doc: '[prune sequence data with no guide tree leaves]'
  type: boolean
  inputBinding:
    prefix: -prunedata
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
- id: convert
  doc: '[no alignment, just convert to another format]'
  type: boolean
  inputBinding:
    prefix: -convert
- id: version
  doc: '[check for updates]'
  type: boolean
  inputBinding:
    prefix: -version
- id: verbose
  doc: '[print progress etc. during runtime]'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- prank
