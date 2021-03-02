class: CommandLineTool
id: decision_tree.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_test_table_path
  doc: 'Path to the test table file. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --output_test_table_path
- id: in_output_plot_path
  doc: 'Path to the statistics plot. If target is binary it shows confusion matrix,
    distributions of the predicted probabilities of both classes and ROC curve. If
    target is non-binary it shows confusion matrix. Accepted formats: png.'
  type: File?
  inputBinding:
    prefix: --output_plot_path
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File?
  inputBinding:
    prefix: --output_model_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_test_table_path
  doc: 'Path to the test table file. Accepted formats: csv.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_test_table_path)
- id: out_output_plot_path
  doc: 'Path to the statistics plot. If target is binary it shows confusion matrix,
    distributions of the predicted probabilities of both classes and ROC curve. If
    target is non-binary it shows confusion matrix. Accepted formats: png.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plot_path)
- id: out_output_model_path
  doc: "Path to the output model file. Accepted formats: pkl.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_model_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3
cwlVersion: v1.1
baseCommand:
- decision_tree
