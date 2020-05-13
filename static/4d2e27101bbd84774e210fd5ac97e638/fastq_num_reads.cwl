class: CommandLineTool
id: fastq_num_reads.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_num_reads
