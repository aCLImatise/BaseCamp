class: CommandLineTool
id: principal_component.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_output_plot_path
  doc: 'Path to the Principal Component plot, only if number of components is 2 or
    3. Accepted formats: png.'
  type: File
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_results_path
  doc: "Path to the analysed dataset. Accepted formats: csv.\n"
  type: File
  inputBinding:
    prefix: --output_results_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_path
  doc: 'Path to the Principal Component plot, only if number of components is 2 or
    3. Accepted formats: png.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_results_path
  doc: "Path to the analysed dataset. Accepted formats: csv.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_results_path)
cwlVersion: v1.1
baseCommand:
- principal_component
