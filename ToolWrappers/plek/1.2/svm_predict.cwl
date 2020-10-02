class: CommandLineTool
id: svm_predict.cwl
inputs:
- id: in_predict_probability_estimates
  doc: ': whether to predict probability estimates, 0 or 1 (default 0); for one-class
    SVM only 0 is supported'
  type: long
  inputBinding:
    prefix: -b
- id: in_quiet_mode_outputs
  doc: ': quiet mode (no outputs)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_test_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svm-predict
