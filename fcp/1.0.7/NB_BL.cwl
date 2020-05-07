class: CommandLineTool
id: NB_BL.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nb_blp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: nb_results
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: blastn_results
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
- NB-BL.py
