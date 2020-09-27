class: CommandLineTool
id: reverse_fastq.py_input_fastq.cwl
inputs:
- id: in_output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reverse_fastq.py
- input_fastq
