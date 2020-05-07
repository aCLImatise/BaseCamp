class: CommandLineTool
id: get_fisher_scores.cwl
inputs:
- id: fisher_feature
  doc: '|insert|match|match_prior|simple'
  type: string
  inputBinding:
    prefix: -fisher_feature
- id: null_score_weight_scale
  doc: 10.0 (0.0 to disable)
  type: boolean
  inputBinding:
    prefix: -null_score_weight_scale
- id: rdb
  doc: '0'
  type: boolean
  inputBinding:
    prefix: -rdb
- id: write_dist
  doc: '0'
  type: boolean
  inputBinding:
    prefix: -write_dist
outputs: []
cwlVersion: v1.1
baseCommand:
- get_fisher_scores
