class: CommandLineTool
id: psl2sam.pl.cwl
inputs:
- id: '1'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '3'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: '5'
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: '2'
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- psl2sam.pl
