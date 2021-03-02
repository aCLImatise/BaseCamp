class: CommandLineTool
id: dump_file.py.cwl
inputs:
- id: in_input_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dump_file.py
