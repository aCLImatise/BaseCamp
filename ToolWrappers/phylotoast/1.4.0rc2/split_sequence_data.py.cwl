class: CommandLineTool
id: split_sequence_data.py.cwl
inputs:
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- split_sequence_data.py
