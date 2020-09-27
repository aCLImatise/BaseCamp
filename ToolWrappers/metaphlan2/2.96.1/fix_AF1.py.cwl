class: CommandLineTool
id: fix_AF1.py.cwl
inputs:
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    prefix: --input_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fix_AF1.py
