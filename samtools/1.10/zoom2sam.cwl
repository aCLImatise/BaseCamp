class: CommandLineTool
id: zoom2sam.pl.cwl
inputs:
- id: read_len
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aln_zoom
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- zoom2sam.pl
