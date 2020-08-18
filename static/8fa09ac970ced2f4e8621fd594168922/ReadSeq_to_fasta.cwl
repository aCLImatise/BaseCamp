class: CommandLineTool
id: ../../../ReadSeq_to_fasta.cwl
inputs:
- id: mask
  doc: Mask sequence name indicating columns to drop
  type: string
  inputBinding:
    prefix: --mask
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-fasta
