class: CommandLineTool
id: convert_readcount_file.py.cwl
inputs:
- id: in_rcn
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convert-readcount-file.py
