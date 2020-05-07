class: CommandLineTool
id: fastq_not_empty.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_not_empty
