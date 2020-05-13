class: CommandLineTool
id: rcorrector.cwl
inputs:
- id: od
  doc: '(default: ./)'
  type: string
  inputBinding:
    prefix: -od
- id: t
  doc: 'of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: -t
- id: max_cor
  doc: ': the maximum number of correction every 100bp (default: 8)'
  type: long
  inputBinding:
    prefix: -maxcor
- id: max_cork
  doc: ': the maximum number of correction within k-bp window (default: 4)'
  type: long
  inputBinding:
    prefix: -maxcorK
- id: wk
  doc: ': the proportion of kmers that are used to estimate weak kmer count threshold
    (default: 0.95)'
  type: double
  inputBinding:
    prefix: -wk
- id: stdout
  doc: ': output the corrected sequences to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -stdout
- id: verbose
  doc: ': output some correction information to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rcorrector
