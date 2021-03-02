class: CommandLineTool
id: NLStradamus.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_posterior_threshold_default
  doc: '[optional] Posterior Threshold (0...1) default 0.6'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_model_two_state
  doc: '[optional] Model (1 for two state, 2 for four state) default 1'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_algorithm_viterbi_posterior
  doc: '[optional] Algorithm (0 for viterbi, 1 for posterior with threshold, 2 for
    both) default 1'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_tab
  doc: '[optional] flag for tab delimited output. default is off'
  type: boolean?
  inputBinding:
    prefix: -tab
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NLStradamus
