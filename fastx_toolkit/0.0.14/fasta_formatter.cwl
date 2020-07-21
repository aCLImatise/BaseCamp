class: CommandLineTool
id: ../../../fasta_formatter.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: my_id
  doc: AAAAAGGGGGCCCCCTTTTAGCTN
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_formatter
