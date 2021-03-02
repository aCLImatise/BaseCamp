class: CommandLineTool
id: pls_components.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_plot_path
  doc: 'Path to the Mean Square Error plot. Accepted formats: png.'
  type: File?
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_results_path
  doc: "Table with R2 and MSE for calibration and cross-validation data for the best\
    \ number of components. Accepted formats: csv.\n"
  type: File?
  inputBinding:
    prefix: --output_results_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_path
  doc: 'Path to the Mean Square Error plot. Accepted formats: png.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_results_path
  doc: "Table with R2 and MSE for calibration and cross-validation data for the best\
    \ number of components. Accepted formats: csv.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_results_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3
cwlVersion: v1.1
baseCommand:
- pls_components
