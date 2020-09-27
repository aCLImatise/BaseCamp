class: CommandLineTool
id: gfa_to_fastg.py.cwl
inputs:
- id: in_gfatwofastgdotpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfa_to_fastg.py
