class: CommandLineTool
id: fastq_count.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: input
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_count
