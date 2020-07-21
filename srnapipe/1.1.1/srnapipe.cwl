class: CommandLineTool
id: ../../../srnapipe.cwl
inputs:
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    prefix: --fastq
- id: fast_q_n
  doc: ''
  type: string
  inputBinding:
    prefix: --fastq_n
outputs: []
cwlVersion: v1.1
baseCommand:
- srnapipe
