class: CommandLineTool
id: clean_pairs_memory.py.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_two
  doc: ''
  type: long
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clean_pairs_memory.py
