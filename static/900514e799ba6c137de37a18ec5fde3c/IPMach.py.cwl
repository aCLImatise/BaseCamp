class: CommandLineTool
id: IPMach.py.cwl
inputs:
- id: in_input_file_name
  doc: Input file name
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- IPMach.py
