#!/usr/bin/env cwl-runner

baseCommand:
- PseudoPvals.py
class: CommandLineTool
cwlVersion: v1.0
id: pseudopvals.py
inputs:
- doc: ''
  id: compute
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: pseudo
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: p_vals
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: set
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: correlations
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: obtained
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: permuted
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: data
  inputBinding:
    position: 10
  type: string
- doc: Type of p-values to computed.  oned-sided | two-sided (default).
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: Name of file to which p-values will be written.
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
