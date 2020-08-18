class: CommandLineTool
id: ../../../reverse_fastq.py_output_fastq.cwl
inputs:
- id: reverse_fast_q_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- reverse_fastq.py
- output_fastq
