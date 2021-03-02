class: CommandLineTool
id: runquake.py.cwl
inputs:
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_spec_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runquake.py
