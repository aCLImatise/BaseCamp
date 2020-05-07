class: CommandLineTool
id: hash_exp.cwl
inputs:
- id: no
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: such
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- hash_exp
