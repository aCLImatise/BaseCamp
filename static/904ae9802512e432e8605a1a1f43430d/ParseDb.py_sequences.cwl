class: CommandLineTool
id: ParseDb.py_sequences.cwl
inputs:
- id: in_parsed_b_do_tpy
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
- ParseDb.py
- sequences
