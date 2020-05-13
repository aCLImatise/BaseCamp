class: CommandLineTool
id: fastq_anonymous.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-anonymous
