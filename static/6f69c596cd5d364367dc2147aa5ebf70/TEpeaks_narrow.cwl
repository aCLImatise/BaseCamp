class: CommandLineTool
id: TEpeaks_narrow.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: keep_dup
  doc: "How to deal with duplicate reads. The valid values are 'auto', 'all', or 1\
    \ (default: auto)"
  type: string
  inputBinding:
    prefix: --keepDup
- id: shift
  doc: "Shift reads towards 3' end, if positive, or 5' end if negative. (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --shift
- id: lm_fold
  doc: 'Lower limit of fold ratio against background to build model (default: 10)'
  type: long
  inputBinding:
    prefix: --lmfold
- id: hm_fold
  doc: 'Higher limit of fold ratio against background to build model (default: 30)'
  type: long
  inputBinding:
    prefix: --hmfold
- id: fdr
  doc: 'False discovery rate cutoff (default: 0.05)'
  type: string
  inputBinding:
    prefix: --fdr
- id: to_large
  doc: 'Scale library size to large sample (default: off)'
  type: boolean
  inputBinding:
    prefix: --toLarge
- id: threads
  doc: 'Number of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: pile_up
  doc: 'The minuim pileup required for peaks with multi-reads (default: 20)'
  type: long
  inputBinding:
    prefix: --pileup
- id: fe
  doc: 'The minuim fold enrichment required for peaks with multi-reads (default: 3)'
  type: string
  inputBinding:
    prefix: --fe
outputs: []
cwlVersion: v1.1
baseCommand:
- TEpeaks
- narrow
