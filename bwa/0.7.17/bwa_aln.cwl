class: CommandLineTool
id: bwa_aln.cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: y
  doc: filter Casava-filtered sequences
  type: boolean
  inputBinding:
    prefix: -Y
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- aln
