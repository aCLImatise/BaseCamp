class: CommandLineTool
id: fa2fq.py.cwl
inputs:
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a_filename
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fa2fq.py
