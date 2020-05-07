class: CommandLineTool
id: cov_model.py.cwl
inputs:
- id: counts_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: int
  doc: 'Kmers were counted as integers w/o the use of quality values [default: False]'
  type: boolean
  inputBinding:
    prefix: --int
- id: ratio
  doc: 'Likelihood ratio to set trusted/untrusted cutoff [default: 200]'
  type: string
  inputBinding:
    prefix: --ratio
- id: no_sample
  doc: 'Do not sample kmer coverages into kmers.txt because its already done [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --no_sample
outputs: []
cwlVersion: v1.1
baseCommand:
- cov_model.py
