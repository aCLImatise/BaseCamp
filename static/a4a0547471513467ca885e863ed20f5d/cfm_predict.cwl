class: CommandLineTool
id: cfm_predict.cwl
inputs:
- id: in_input_smiles_or_inch_i
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prob_thresh_for_prune
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_param_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_config_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_include_annotations
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output_filename
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_apply_post_processing
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cfm-predict
