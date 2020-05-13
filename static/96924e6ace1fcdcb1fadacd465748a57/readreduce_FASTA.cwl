class: CommandLineTool
id: readreduce_FASTA.cwl
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
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: j
  doc: ''
  type: boolean
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- readreduce
- FASTA
