class: CommandLineTool
id: cfm_predict.cwl
inputs:
- id: cfm_predict_exe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_smiles_or_inch_i
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prob_thresh_for_prune
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: param_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: include_annotations
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: apply_post_processing
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-predict
