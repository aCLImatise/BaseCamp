class: CommandLineTool
id: ../../../fastq_join.cwl
inputs:
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: read_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-join
