class: CommandLineTool
id: probabilistic2020_genes..cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_ll
  doc: ''
  type: string?
  inputBinding:
    prefix: -ll
- id: in_probabilistic_two_zero_two_zero
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- probabilistic2020
- genes.
