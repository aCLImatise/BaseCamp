class: CommandLineTool
id: k_means.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_plot_path
  doc: 'Path to the clustering plot. Accepted formats: png.'
  type: File?
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_results_path
  doc: 'Path to the clustered dataset. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --output_results_path
- id: in_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File?
  inputBinding:
    prefix: --output_model_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_path
  doc: 'Path to the clustering plot. Accepted formats: png.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_results_path
  doc: 'Path to the clustered dataset. Accepted formats: csv.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_results_path)
- id: out_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_model_path)
hints: []
cwlVersion: v1.1
baseCommand:
- k_means
