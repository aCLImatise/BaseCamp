class: CommandLineTool
id: Epsilon_NB.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: epsilon_nbp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: nb_results
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: epsilon
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- Epsilon-NB.py
