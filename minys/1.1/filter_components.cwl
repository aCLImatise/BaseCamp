class: CommandLineTool
id: filter_components.py_minlength.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: minlength
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_components.py
- minlength
