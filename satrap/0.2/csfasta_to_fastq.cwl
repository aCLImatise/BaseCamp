class: CommandLineTool
id: ../../../csfasta_to_fastq.cwl
inputs:
- id: cs_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: -csfasta
- id: qual
  doc: ''
  type: string
  inputBinding:
    prefix: -qual
- id: cs_fast_a_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- csfasta_to_fastq
