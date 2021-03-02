class: CommandLineTool
id: reverse_fastq.py_output_fastq.cwl
inputs:
- id: in_reverse_fast_q_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_q
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_output_fast_q
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- reverse_fastq.py
- output_fastq
