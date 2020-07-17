class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_utils_convert.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- convert
