class: CommandLineTool
id: get_fisher_scores.cwl
inputs:
- id: in_modelfiledb_seqfilepriorlibrary_priori
  doc: "(or -modelfile)\n-db seq_file\n-prior_library prior\n-i model\n-fisher_feature\
    \ trans|insert|match|match_prior|simple\n-null_score_weight_scale 10.0 (0.0 to\
    \ disable)\n-rdb 0\n-write_dist 0"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_fisher_scores
