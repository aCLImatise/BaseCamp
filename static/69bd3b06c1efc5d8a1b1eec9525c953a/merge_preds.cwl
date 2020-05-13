class: CommandLineTool
id: merge_preds.py.cwl
inputs:
- id: combine
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: misclassified
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: samples
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: different
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: phenotypes
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: into
  doc: ''
  type: long
  inputBinding:
    position: 7
- id: data
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: matrices
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_preds.py
