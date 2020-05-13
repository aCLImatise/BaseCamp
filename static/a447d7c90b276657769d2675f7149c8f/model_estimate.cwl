class: CommandLineTool
id: model_estimate.cwl
inputs:
- id: positive_input_file
  doc: 'Path tofile containing input for the positive class. (default: None)'
  type: string
  inputBinding:
    prefix: --positive-input-file
- id: negative_input_file
  doc: 'Path to file containing input for the negative class. (default: None)'
  type: string
  inputBinding:
    prefix: --negative-input-file
- id: model_file
  doc: 'Path to a fit model file. (default: None)'
  type: string
  inputBinding:
    prefix: --model-file
- id: output_dir
  doc: 'Path to output directory. (default: out)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: cross_validation
  doc: "If set, report cross validated performance measures. The model's parameters\
    \ are re-trained in each fold keeping the hyper-parameters of the given model.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --cross-validation
outputs: []
cwlVersion: v1.1
baseCommand:
- model
- estimate
