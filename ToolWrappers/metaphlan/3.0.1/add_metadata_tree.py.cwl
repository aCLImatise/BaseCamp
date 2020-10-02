class: CommandLineTool
id: add_metadata_tree.py.cwl
inputs:
- id: in_f
  doc: ''
  type: string[]
  inputBinding:
    prefix: -f
- id: in_t
  doc: ''
  type: string[]
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_metadata_tree.py
