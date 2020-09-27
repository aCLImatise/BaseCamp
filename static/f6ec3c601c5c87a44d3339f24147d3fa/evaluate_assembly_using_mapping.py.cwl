class: CommandLineTool
id: evaluate_assembly_using_mapping.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_two
  doc: ''
  type: long
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long
  inputBinding:
    prefix: '-1'
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- evaluate_assembly_using_mapping.py
