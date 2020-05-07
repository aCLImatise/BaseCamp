class: CommandLineTool
id: spades_bwa_aln.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aln
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: y
  doc: filter Casava-filtered sequences
  type: boolean
  inputBinding:
    prefix: -Y
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- aln
