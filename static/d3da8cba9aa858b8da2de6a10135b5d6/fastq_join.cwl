class: CommandLineTool
id: fastq_join.cwl
inputs:
- id: read_1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-join
