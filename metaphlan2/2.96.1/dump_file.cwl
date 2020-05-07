class: CommandLineTool
id: dump_file.py.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    prefix: --input_file
outputs: []
cwlVersion: v1.1
baseCommand:
- dump_file.py
