class: CommandLineTool
id: model_estimate.cwl
inputs:
- id: in_positive_input_file
  doc: "Path tofile containing input for the positive class.\n(default: None)"
  type: File
  inputBinding:
    prefix: --positive-input-file
- id: in_negative_input_file
  doc: "Path to file containing input for the negative class.\n(default: None)"
  type: File
  inputBinding:
    prefix: --negative-input-file
- id: in_model_file
  doc: 'Path to a fit model file. (default: None)'
  type: File
  inputBinding:
    prefix: --model-file
- id: in_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_cross_validation
  doc: "If set, report cross validated performance measures.\nThe model's parameters\
    \ are re-trained in each fold\nkeeping the hyper-parameters of the given model.\n\
    (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --cross-validation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- model
- estimate
