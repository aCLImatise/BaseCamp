class: CommandLineTool
id: regression_predict.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_input_model_path
  doc: 'Path to the input model. Accepted formats: pkl.'
  type: File
  inputBinding:
    prefix: --input_model_path
- id: in_output_results_path
  doc: "Path to the output results file. Accepted formats: csv.\n"
  type: File
  inputBinding:
    prefix: --output_results_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_results_path
  doc: "Path to the output results file. Accepted formats: csv.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_results_path)
cwlVersion: v1.1
baseCommand:
- regression_predict
