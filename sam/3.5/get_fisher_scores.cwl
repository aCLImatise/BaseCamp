#!/usr/bin/env cwl-runner

baseCommand:
- get_fisher_scores
class: CommandLineTool
cwlVersion: v1.0
id: get_fisher_scores
inputs:
- doc: '|insert|match|match_prior|simple'
  id: fisher_feature
  inputBinding:
    prefix: -fisher_feature
  type: string
- doc: 10.0 (0.0 to disable)
  id: null_score_weight_scale
  inputBinding:
    prefix: -null_score_weight_scale
  type: boolean
- doc: '0'
  id: rdb
  inputBinding:
    prefix: -rdb
  type: boolean
- doc: '0'
  id: write_dist
  inputBinding:
    prefix: -write_dist
  type: boolean
