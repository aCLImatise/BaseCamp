class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PseudoPvals.py.cwl
inputs:
- id: type
  doc: Type of p-values to computed.  oned-sided | two-sided (default).
  type: string
  inputBinding:
    prefix: --type
- id: outfile
  doc: Name of file to which p-values will be written.
  type: string
  inputBinding:
    prefix: --outfile
- id: compute
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pseudo
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p_vals
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: correlations
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: obtained
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: var_10
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: permuted
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: data_dot
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- PseudoPvals.py
