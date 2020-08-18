class: CommandLineTool
id: ../../../sequana_fastq_count.cwl
inputs:
- id: input_fastq_gzipped
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --input
- id: fast_q_count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_fastq_count
