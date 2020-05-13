class: CommandLineTool
id: reago.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ago_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename_fast_a
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- reago.py
