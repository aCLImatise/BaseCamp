class: CommandLineTool
id: prank.cwl
inputs:
- id: in_fasta_formatttreefile_ooutputfile
  doc: "(in FASTA format)\n-t=tree_file [default: no tree, generate approximate NJ\
    \ tree]\n-o=output_file [default: 'output']\n-f=output_format ['fasta' (default),\
    \ 'phylipi', 'phylips', 'paml', 'nexus']\n-showxml [output xml-files]\n-showtree\
    \ [output dnd-files]\n-showanc [output ancestral sequences]\n-showevents [output\
    \ evolutioanry events]\n-showall [output all of these]\n-support [compute posterior\
    \ support]\n-njtree [estimate tree from input alignment (and realign)]\n-treeonly\
    \ [estimate tree only]\n-quiet"
  type: File
  inputBinding:
    prefix: -d
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
- id: in_keep
  doc: '[keep alignment "as is" (e.g. for ancestor inference)]'
  type: boolean
  inputBinding:
    prefix: -keep
- id: in_iterate
  doc: =# [rounds of re-alignment iteration]
  type: boolean
  inputBinding:
    prefix: -iterate
- id: in_once
  doc: '[run only once; same as -iterate=1]'
  type: boolean
  inputBinding:
    prefix: -once
- id: in_prune_tree
  doc: '[prune guide tree branches with no sequence data]'
  type: boolean
  inputBinding:
    prefix: -prunetree
- id: in_prune_data
  doc: '[prune sequence data with no guide tree leaves]'
  type: boolean
  inputBinding:
    prefix: -prunedata
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
- id: in_convert
  doc: '[no alignment, just convert to another format]'
  type: boolean
  inputBinding:
    prefix: -convert
- id: in_version
  doc: '[check for updates]'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_verbose
  doc: '[print progress etc. during runtime]'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prank
