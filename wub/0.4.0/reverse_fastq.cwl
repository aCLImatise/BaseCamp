class: CommandLineTool
id: reverse_fastq.py_output_fastq.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- reverse_fastq.py
- output_fastq
