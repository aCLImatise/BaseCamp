class: CommandLineTool
id: seq_trim_fastq.py.cwl
inputs:
- id: left
  doc: Number of base pairs to trim from the left.
  type: string
  inputBinding:
    prefix: --left
- id: right
  doc: Number of base pairs to trim from the right.
  type: string
  inputBinding:
    prefix: --right
outputs: []
cwlVersion: v1.1
baseCommand:
- seq_trim_fastq.py
