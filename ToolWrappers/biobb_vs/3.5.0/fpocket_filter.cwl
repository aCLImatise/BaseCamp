class: CommandLineTool
id: fpocket_filter.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pockets_zip
  doc: 'Path to all the pockets found by fpocket. Accepted formats: zip.'
  type: File?
  inputBinding:
    prefix: --input_pockets_zip
- id: in_input_summary
  doc: 'Path to the JSON summary file returned by fpocket. Accepted formats: json.'
  type: File?
  inputBinding:
    prefix: --input_summary
- id: in_output_filter_pockets_zip
  doc: "Path to the selected pockets after filtering. Accepted formats: zip.\n"
  type: File?
  inputBinding:
    prefix: --output_filter_pockets_zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- fpocket_filter
