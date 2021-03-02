class: CommandLineTool
id: scg_distributions..cwl
inputs:
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cell
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genotype_r
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scg
- distributions.
