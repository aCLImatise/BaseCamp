class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/runquake.py.cwl
inputs:
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: are
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: specified
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: spec_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- runquake.py
