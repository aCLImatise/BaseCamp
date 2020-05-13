class: CommandLineTool
id: svm_grid_modelling_singlet.py.cwl
inputs:
- id: grid_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: grid_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: svm_options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: dataset
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- svm_grid_modelling_singlet.py
