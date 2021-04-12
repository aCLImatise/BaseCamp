class: CommandLineTool
id: EvoFoldV2.cwl
inputs:
- id: in_arg_path_evofold
  doc: '[ --configFilePath ] arg (=./) Path to EvoFold configuration files.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_output_complete
  doc: "[ --completeFile ] arg         Output complete structure predictions for\n\
    each input element in addition to the\nsub-structures."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_name_use
  doc: "[ --annoName ] arg             Name of annotation to use (see annoMap file\n\
    for definition of annotation symbols. Note\nthat '*' can be used as wildcard.\n\
    Specifying annotation is useful for adding\nconstraints on the predicted structure."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_decimals
  doc: (=5)               Output precision of score.
  type: long?
  inputBinding:
    prefix: --decimals
- id: in_arg_output_file
  doc: '[ --outputFile ] arg (=-)      Output file (default is stdout).'
  type: File?
  inputBinding:
    prefix: -o
- id: in_ev_of_old
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alg_do_tama
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tree_dot_neiw_ck
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outputFile ] arg (=-)      Output file (default is stdout).'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- EvoFoldV2
