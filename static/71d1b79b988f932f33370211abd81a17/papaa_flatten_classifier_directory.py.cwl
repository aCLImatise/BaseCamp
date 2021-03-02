class: CommandLineTool
id: papaa_flatten_classifier_directory.py.cwl
inputs:
- id: in_input_directory
  doc: Input Classifier directory
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_output_directory
  doc: "Directory to put flattened collection\n"
  type: Directory?
  inputBinding:
    prefix: --output-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Directory to put flattened collection\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_flatten_classifier_directory.py
