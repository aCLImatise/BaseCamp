class: CommandLineTool
id: fastq_count.cwl
inputs:
- id: r1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-count
