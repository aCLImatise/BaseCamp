class: CommandLineTool
id: renumber_structure.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: system
  doc: ''
  type: string
  inputBinding:
    prefix: --system
- id: step
  doc: ''
  type: string
  inputBinding:
    prefix: --step
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: j
  doc: ''
  type: string
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- renumber_structure
