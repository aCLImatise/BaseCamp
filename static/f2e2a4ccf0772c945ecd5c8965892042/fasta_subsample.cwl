class: CommandLineTool
id: ../../../fasta_subsample.cwl
inputs:
- id: seed
  doc: ''
  type: string
  inputBinding:
    prefix: -seed
- id: nor_and
  doc: ''
  type: boolean
  inputBinding:
    prefix: -norand
- id: rest
  doc: ''
  type: string
  inputBinding:
    prefix: -rest
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-subsample
