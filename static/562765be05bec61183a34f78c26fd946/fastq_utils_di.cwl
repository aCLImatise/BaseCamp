class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_utils_di.cwl
inputs:
- id: strip
  doc: Strip additional info
  type: boolean
  inputBinding:
    prefix: --strip
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mate_one_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate_two_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- di
