class: CommandLineTool
id: ../../../get_fisher_scores.cwl
inputs:
- id: in_db
  doc: ''
  type: File
  inputBinding:
    prefix: -db
- id: in_prior_library
  doc: ''
  type: string
  inputBinding:
    prefix: -prior_library
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_fisher_feature
  doc: '|insert|match|match_prior|simple'
  type: string
  inputBinding:
    prefix: -fisher_feature
- id: in_null_score_weight_scale
  doc: (0.0 to disable)
  type: long
  inputBinding:
    prefix: -null_score_weight_scale
- id: in_rdb
  doc: ''
  type: long
  inputBinding:
    prefix: -rdb
- id: in_write_dist
  doc: ''
  type: long
  inputBinding:
    prefix: -write_dist
- id: in_i_modelfile_modelfile
  doc: -i model_file  (or -modelfile)
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_fisher_scores
