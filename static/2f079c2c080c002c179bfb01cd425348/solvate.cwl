class: CommandLineTool
id: solvate.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_solvent_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_solvent_gro_path
- id: in_output_top_zip_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_top_zip_path
- id: in_input_top_zip_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_top_zip_path
- id: in_output_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_gro_path
- id: in_input_solute_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_solute_gro_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_top_zip_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_top_zip_path)
- id: out_output_gro_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gro_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_md:3.5.1--py_0
cwlVersion: v1.1
baseCommand:
- solvate
