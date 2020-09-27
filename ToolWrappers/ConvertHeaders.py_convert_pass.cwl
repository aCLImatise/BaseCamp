class: CommandLineTool
id: ConvertHeaders.py_convert_pass.cwl
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
cwlVersion: v1.1
baseCommand:
- ConvertHeaders.py
- convert-pass
