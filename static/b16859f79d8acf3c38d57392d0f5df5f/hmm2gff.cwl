class: CommandLineTool
id: ../../../hmm2gff.py.cwl
inputs:
- id: map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: features
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contributing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: class_fication
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: back
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: functional
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: gene
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: prediction
  doc: ''
  type: string
  inputBinding:
    position: 13
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm2gff.py
