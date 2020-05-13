class: CommandLineTool
id: rearrange_snv_matrix.pl.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- rearrange_snv_matrix.pl
