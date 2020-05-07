class: CommandLineTool
id: testfilesystem.sh.cwl
inputs:
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: log
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: ways
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: interval_in_seconds
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- testfilesystem.sh
