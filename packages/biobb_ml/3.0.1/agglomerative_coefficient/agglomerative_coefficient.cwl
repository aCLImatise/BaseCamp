class: CommandLineTool
id: agglomerative_coefficient.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_output_plot_path
  doc: 'Path to the elbow and gap methods plot. Accepted formats: png.'
  type: File
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_results_path
  doc: "Path to the gap values list. Accepted formats: csv.\n"
  type: File
  inputBinding:
    prefix: --output_results_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_path
  doc: 'Path to the elbow and gap methods plot. Accepted formats: png.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_results_path
  doc: "Path to the gap values list. Accepted formats: csv.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_results_path)
cwlVersion: v1.1
baseCommand:
- agglomerative_coefficient
