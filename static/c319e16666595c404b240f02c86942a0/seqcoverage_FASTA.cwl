class: CommandLineTool
id: seqcoverage_FASTA.cwl
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
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- seqcoverage
- FASTA
