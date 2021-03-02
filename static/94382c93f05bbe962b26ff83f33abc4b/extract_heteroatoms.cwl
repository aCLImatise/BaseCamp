class: CommandLineTool
id: extract_heteroatoms.cwl
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
- id: in_output_heteroatom_path
  doc: "Output heteroatom file path. Accepted formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_heteroatom_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_heteroatom_path
  doc: "Output heteroatom file path. Accepted formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_heteroatom_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0
cwlVersion: v1.1
baseCommand:
- extract_heteroatoms
