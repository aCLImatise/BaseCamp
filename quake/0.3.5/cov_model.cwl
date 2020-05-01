#!/usr/bin/env cwl-runner

baseCommand:
- cov_model.py
class: CommandLineTool
cwlVersion: v1.0
id: cov_model.py
inputs:
- doc: ''
  id: counts_file
  inputBinding:
    position: 0
  type: string
- doc: 'Kmers were counted as integers w/o the use of quality values [default: False]'
  id: int
  inputBinding:
    prefix: --int
  type: boolean
- doc: 'Likelihood ratio to set trusted/untrusted cutoff [default: 200]'
  id: ratio
  inputBinding:
    prefix: --ratio
  type: string
- doc: 'Do not sample kmer coverages into kmers.txt because its already done [default:
    False]'
  id: no_sample
  inputBinding:
    prefix: --no_sample
  type: boolean
