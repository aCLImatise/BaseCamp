class: CommandLineTool
id: rgt_tools.py_encode.cwl
inputs:
- id: i
  doc: Input file list downloaded from ENCODE
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output directory
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- encode
