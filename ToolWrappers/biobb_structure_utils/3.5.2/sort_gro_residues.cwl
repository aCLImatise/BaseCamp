class: CommandLineTool
id: sort_gro_residues.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_gro_path
  doc: Input GRO file name
  type: File?
  inputBinding:
    prefix: --input_gro_path
- id: in_output_gro_path
  doc: "Output sorted GRO file name\n"
  type: File?
  inputBinding:
    prefix: --output_gro_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gro_path
  doc: "Output sorted GRO file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gro_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0
cwlVersion: v1.1
baseCommand:
- sort_gro_residues
