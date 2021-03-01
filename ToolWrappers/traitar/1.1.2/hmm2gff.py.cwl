class: CommandLineTool
id: hmm2gff.py.cwl
inputs:
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_features
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contributing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_class_fication
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_back
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_functional
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_prediction
  doc: ''
  type: string
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmm2gff.py
