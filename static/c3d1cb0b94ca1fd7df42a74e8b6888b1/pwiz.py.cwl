class: CommandLineTool
id: pwiz.py.cwl
inputs:
- id: in_database_name
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
- pwiz.py
