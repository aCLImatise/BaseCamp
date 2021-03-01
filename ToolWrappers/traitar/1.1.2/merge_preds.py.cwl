class: CommandLineTool
id: merge_preds.py.cwl
inputs:
- id: in_combine
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_misclassified
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_different
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_phenotypes
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_matrices
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge_preds.py
