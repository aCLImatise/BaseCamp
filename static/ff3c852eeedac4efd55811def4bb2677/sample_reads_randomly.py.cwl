class: CommandLineTool
id: sample_reads_randomly.py.cwl
inputs:
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -N
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sample-reads-randomly.py
