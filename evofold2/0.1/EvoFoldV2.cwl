class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/EvoFoldV2.cwl
inputs:
- id: arg_path_evofold
  doc: '[ --configFilePath ] arg (=./) Path to EvoFold configuration files.'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_output_predictions
  doc: '[ --completeFile ] arg         Output complete structure predictions for  each
    input element in addition to the  sub-structures.'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_name_use
  doc: "[ --annoName ] arg             Name of annotation to use (see annoMap file\
    \ for definition of annotation symbols. Note  that '*' can be used as wildcard.\
    \  Specifying annotation is useful for adding  constraints on the predicted structure."
  type: boolean
  inputBinding:
    prefix: -n
- id: decimals
  doc: (=5)               Output precision of score.
  type: string
  inputBinding:
    prefix: --decimals
- id: arg_output_file
  doc: '[ --outputFile ] arg (=-)      Output file (default is stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: ev_of_old
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alg_do_tama
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tree_dot_neiw_ck
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- EvoFoldV2
