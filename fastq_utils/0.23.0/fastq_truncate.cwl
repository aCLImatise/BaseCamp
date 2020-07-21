class: CommandLineTool
id: ../../../fastq_truncate.cwl
inputs:
- id: fast_q_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: num_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_truncate
