class: CommandLineTool
id: structure_check.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_structure_path
  doc: 'Input structure file path. Accepted formats: pdb.'
  type: File?
  inputBinding:
    prefix: --input_structure_path
- id: in_output_summary_path
  doc: "Output summary checking results. Accepted formats: json.\n"
  type: File?
  inputBinding:
    prefix: --output_summary_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_summary_path
  doc: "Output summary checking results. Accepted formats: json.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_summary_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0
cwlVersion: v1.1
baseCommand:
- structure_check
