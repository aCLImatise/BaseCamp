class: CommandLineTool
id: ReadSeq_to_fasta.cwl
inputs:
- id: mask
  doc: Mask sequence name indicating columns to drop
  type: string
  inputBinding:
    prefix: --mask
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-fasta
