class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tiptoft_input_fastq.cwl
inputs:
- id: tip_to_ft
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tiptoft
- input_fastq
