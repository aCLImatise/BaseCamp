class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_utils_sort.cwl
inputs:
- id: mate_one_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mate_two_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate_one_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- sort
