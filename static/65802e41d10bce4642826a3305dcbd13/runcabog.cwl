class: CommandLineTool
id: runcabog.py.cwl
inputs:
- id: para_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: readfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: library_info_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- runcabog.py
