class: CommandLineTool
id: remove_tail.py_infile_length.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_tail.py
- infile
- length
