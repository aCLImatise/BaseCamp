class: CommandLineTool
id: fqfilt.pl.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min_len
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fqfilt.pl
