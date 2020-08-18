class: CommandLineTool
id: ../../../makeidx.pl.cwl
inputs:
- id: ian_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ianp
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makeidx.pl
