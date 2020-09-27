class: CommandLineTool
id: rsat_matrix_quality.cwl
inputs:
- id: in_perm
  doc: "0 -bgfile my_background.txt \\\n-o my_matrix_quality"
  type: long
  inputBinding:
    prefix: -perm
- id: in_h_dot
  doc: "Multiple image formats can be specified either by using iteratively\nthe option,\
    \ or by separating them by commas.\nExample: -img_format png,pdf"
  type: boolean
  inputBinding:
    prefix: -h.
- id: in_plot
  doc: ''
  type: string
  inputBinding:
    prefix: -plot
- id: in_matrix_quality
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_interest_dot
  doc: "\e[1mMatrix sites\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_set_dot
  doc: If the left-out sequence has one or more "twin" (identical site) in the
  type: string
  inputBinding:
    position: 0
- id: in_approach_may_however
  doc: This approach may however pose problem in the specific case of
  type: string
  inputBinding:
    position: 0
- id: in_computed_dot
  doc: "\e[1mComparing the scores of the matrix sites to the theoretical"
  type: string
  inputBinding:
    position: 0
- id: in_beware_score_distribution
  doc: 'Beware: the score distribution of matrix sites is fake. Indeed, those'
  type: string
  inputBinding:
    position: 0
- id: in_theory
  doc: "The theoretical distribution of scores, computing according to the\nbackground\
    \ model;"
  type: string
  inputBinding:
    position: 0
- id: in_matrix_sites
  doc: "The score distribution of the matrix sites (which is biased by the\nfact that\
    \ these sites were used to build the matrix)."
  type: string
  inputBinding:
    position: 1
- id: in_matrix_sites_cv
  doc: "This is the distribution of scores for the matrix sites, evaluated\nwith the\
    \ LOO procedure."
  type: string
  inputBinding:
    position: 2
- id: in_sequences
  doc: pattern matching
  type: string
  inputBinding:
    position: 0
- id: in_pssm
  doc: evaluation
  type: string
  inputBinding:
    position: 1
- id: in_one_dot
  doc: "\e[1m-top top_matrices\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences_dot
  doc: "\e[1m-kfold k\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_steps_dot
  doc: "\e[1m-nograph\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_convert_background_model_dot
  doc: "\e[1m-decimals #\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequence_type
  doc: Calculate the OCC proba.
  type: string
  inputBinding:
    position: 0
- id: in_statistics_dot
  doc: If the option '-bgfile' is specified, the specified background model
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- matrix-quality
