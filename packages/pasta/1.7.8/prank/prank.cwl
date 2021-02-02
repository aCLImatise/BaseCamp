class: CommandLineTool
id: prank.cwl
inputs:
- id: in_ttreefile_mmodelfile_ooutputfile
  doc: "-t=tree_file [default: no tree, generate approximate NJ tree]\n-m=model_file\
    \ [default: HKY2/WAG]\n-o=output_file [default: 'output']\n-f=output_format [default:\
    \ Fasta; type '--help' for details]\n-shortnames [truncate names at first space]\n\
    -quiet"
  type: File
  inputBinding:
    prefix: -d
- id: in_f
  doc: '[equivalent]'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_gap_rate
  doc: '=# [gap opening rate; default: dna 0.025 / prot 0.005]'
  type: boolean
  inputBinding:
    prefix: -gaprate
- id: in_gap_ext
  doc: '=# [gap extension probability; default: dna 0.75 / prot 0.5]'
  type: boolean
  inputBinding:
    prefix: -gapext
- id: in_codon
  doc: '[for coding DNA: use empirical codon model]'
  type: boolean
  inputBinding:
    prefix: -codon
- id: in_dna
  doc: '/ -protein [no autodetection: use dna or protein model]'
  type: boolean
  inputBinding:
    prefix: -DNA
- id: in_term_gap
  doc: '[penalise terminal gaps normally]'
  type: boolean
  inputBinding:
    prefix: -termgap
- id: in_no_missing
  doc: '[no missing data, use -F for terminal gaps ]'
  type: boolean
  inputBinding:
    prefix: -nomissing
- id: in_e
  doc: '[pre-aligned sequences; do not remove gaps]'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_no_post
  doc: '[do not compute posterior support; default: compute]'
  type: boolean
  inputBinding:
    prefix: -nopost
- id: in_once
  doc: '[run only once; default: twice if no guidetree given]'
  type: boolean
  inputBinding:
    prefix: -once
- id: in_twice
  doc: '[run always twice]'
  type: boolean
  inputBinding:
    prefix: -twice
- id: in_use_logs
  doc: '[slower but should work for a greater number of sequences]'
  type: boolean
  inputBinding:
    prefix: -uselogs
- id: in_translate
  doc: '[translate to protein]'
  type: boolean
  inputBinding:
    prefix: -translate
- id: in_mt_translate
  doc: '[translate to protein using mt table]'
  type: boolean
  inputBinding:
    prefix: -mttranslate
- id: in_max_pair_dist
  doc: =# [maximum pairwise distance for matrix computation]
  type: boolean
  inputBinding:
    prefix: -maxpairdist
- id: in_convert
  doc: '[no alignment, just convert to another format]'
  type: boolean
  inputBinding:
    prefix: -convert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prank
