class: CommandLineTool
id: seq_trim_fastq.py.cwl
inputs:
- id: in_left
  doc: Number of base pairs to trim from the left.
  type: long
  inputBinding:
    prefix: --left
- id: in_right
  doc: Number of base pairs to trim from the right.
  type: long
  inputBinding:
    prefix: --right
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seq_trim_fastq.py
