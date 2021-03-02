class: CommandLineTool
id: drop_columns.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_dataset_path
  doc: 'Path to the input dataset. Accepted formats: csv.'
  type: File?
  inputBinding:
    prefix: --input_dataset_path
- id: in_output_dataset_path
  doc: "Path to the output dataset. Accepted formats: csv.\n"
  type: File?
  inputBinding:
    prefix: --output_dataset_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dataset_path
  doc: "Path to the output dataset. Accepted formats: csv.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dataset_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3
cwlVersion: v1.1
baseCommand:
- drop_columns
