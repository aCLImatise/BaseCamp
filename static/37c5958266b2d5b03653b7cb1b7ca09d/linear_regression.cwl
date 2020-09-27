class: CommandLineTool
id: linear_regression.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_output_test_table_path
  doc: 'Path to the test table file. Accepted formats: csv.'
  type: File
  inputBinding:
    prefix: --output_test_table_path
- id: in_output_plot_path
  doc: 'Residual plot checks the error between actual values and predicted values.
    Accepted formats: png.'
  type: File
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File
  inputBinding:
    prefix: --output_model_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_test_table_path
  doc: 'Path to the test table file. Accepted formats: csv.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_test_table_path)
- id: out_output_plot_path
  doc: 'Residual plot checks the error between actual values and predicted values.
    Accepted formats: png.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_model_path)
cwlVersion: v1.1
baseCommand:
- linear_regression
