class: CommandLineTool
id: tiptoft_input_fastq.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tiptoft
- input_fastq
