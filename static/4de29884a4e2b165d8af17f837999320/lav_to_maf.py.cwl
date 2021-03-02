class: CommandLineTool
id: lav_to_maf.py.cwl
inputs:
- id: in_silent
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lav_to_maf.py
