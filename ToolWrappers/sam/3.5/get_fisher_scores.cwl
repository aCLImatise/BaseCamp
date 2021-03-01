class: CommandLineTool
id: get_fisher_scores.cwl
inputs:
- id: in_fisher_feature
  doc: '|insert|match|match_prior|simple'
  type: File?
  inputBinding:
    prefix: -fisher_feature
- id: in_null_score_weight_scale
  doc: (0.0 to disable)
  type: long?
  inputBinding:
    prefix: -null_score_weight_scale
- id: in_i_modelfile_modelfile
  doc: -i model_file  (or -modelfile)
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_fisher_scores
