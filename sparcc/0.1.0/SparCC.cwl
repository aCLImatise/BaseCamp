#!/usr/bin/env cwl-runner

baseCommand:
- SparCC.py
class: CommandLineTool
cwlVersion: v1.0
id: sparcc.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sparc_cpy
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: counts_file
  inputBinding:
    position: 2
  type: string
- doc: File to which correlation matrix will be written.
  id: cor_file
  inputBinding:
    prefix: --cor_file
  type: string
- doc: File to which covariance matrix will be written.
  id: cov_file
  inputBinding:
    prefix: --cov_file
  type: string
- doc: Name of algorithm used to compute correlations (SparCC (default) | pearson
    | spearman | kendall)
  id: algo
  inputBinding:
    prefix: --algo
  type: string
- doc: Number of inference iterations to average over (20 default).
  id: iter
  inputBinding:
    prefix: --iter
  type: string
- doc: Number of exclusion iterations to remove strongly correlated pairs (10 default).
  id: x_iter
  inputBinding:
    prefix: --xiter
  type: string
- doc: Correlation strength exclusion threshold (0.1 default).
  id: the_rs_hold
  inputBinding:
    prefix: --thershold
  type: string
