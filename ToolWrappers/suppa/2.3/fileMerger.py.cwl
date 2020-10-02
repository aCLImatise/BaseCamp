class: CommandLineTool
id: fileMerger.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_i
  doc: ''
  type: string[]
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fileMerger.py
