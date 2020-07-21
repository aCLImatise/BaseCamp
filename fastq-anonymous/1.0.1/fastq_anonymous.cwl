class: CommandLineTool
id: ../../../fastq_anonymous.cwl
inputs:
- id: mask
  doc: Mask all nucleotides using N
  type: boolean
  inputBinding:
    prefix: --mask
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-anonymous
