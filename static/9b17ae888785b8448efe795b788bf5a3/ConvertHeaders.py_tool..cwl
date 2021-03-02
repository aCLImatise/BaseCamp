class: CommandLineTool
id: ConvertHeaders.py_tool..cwl
inputs:
- id: in_convert_headers_do_tpy
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
- ConvertHeaders.py
- tool.
