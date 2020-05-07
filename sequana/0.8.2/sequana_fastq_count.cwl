class: CommandLineTool
id: sequana_fastq_count.cwl
inputs:
- id: fast_q_count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: input
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_fastq_count
