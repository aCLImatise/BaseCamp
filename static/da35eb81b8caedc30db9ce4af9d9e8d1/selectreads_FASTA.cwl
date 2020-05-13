class: CommandLineTool
id: selectreads_FASTA.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- selectreads
- FASTA
