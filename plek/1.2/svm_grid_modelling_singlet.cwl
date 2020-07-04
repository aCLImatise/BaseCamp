class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svm_grid_modelling_singlet.py.cwl
inputs:
- id: grid_do_tpy
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
