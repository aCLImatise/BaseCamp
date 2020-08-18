class: CommandLineTool
id: ../../../psl2sam.pl.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- psl2sam.pl
