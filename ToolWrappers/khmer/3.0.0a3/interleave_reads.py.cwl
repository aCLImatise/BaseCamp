class: CommandLineTool
id: interleave_reads.py.cwl
inputs:
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_left
  doc: right
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- interleave-reads.py
