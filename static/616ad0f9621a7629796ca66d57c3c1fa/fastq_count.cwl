class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_count.cwl
inputs:
- id: r_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-count
