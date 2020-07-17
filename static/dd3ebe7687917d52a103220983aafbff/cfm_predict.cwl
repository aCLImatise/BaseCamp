class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cfm_predict.cwl
inputs:
- id: input_smiles_or_inch_i
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prob_thresh_for_prune
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: param_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: include_annotations
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: apply_post_processing
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-predict
