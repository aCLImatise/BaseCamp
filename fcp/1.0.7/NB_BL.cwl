class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NB_BL.py.cwl
inputs:
- id: nb_results
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blastn_results
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- NB-BL.py
