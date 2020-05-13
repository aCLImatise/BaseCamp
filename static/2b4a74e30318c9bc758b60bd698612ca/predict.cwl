class: CommandLineTool
id: predict.py.cwl
inputs:
- id: pt_models
  doc: archive with the phenotype predictors
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: directory for the phenotype predictions
  type: string
  inputBinding:
    position: 1
- id: annotation_matrix
  doc: summary file with pfams
  type: string
  inputBinding:
    position: 2
- id: voters
  doc: use this number of voters for the classification
  type: string
  inputBinding:
    prefix: --voters
outputs: []
cwlVersion: v1.1
baseCommand:
- predict.py
