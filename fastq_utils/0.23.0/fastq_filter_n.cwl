class: CommandLineTool
id: fastq_filter_n.cwl
inputs:
- id: '0'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fastq1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_filter_n
