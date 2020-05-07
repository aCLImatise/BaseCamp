class: CommandLineTool
id: pca.cwl
inputs:
- id: must
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: all
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: be
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: specified
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- pca
