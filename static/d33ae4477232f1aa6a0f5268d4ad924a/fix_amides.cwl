class: CommandLineTool
id: fix_amides.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: Input PDB file name
  type: File?
  inputBinding:
    prefix: --input_pdb_path
- id: in_output_pdb_path
  doc: "Output PDB file name\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Output PDB file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_model:3.5.1--py_1
cwlVersion: v1.1
baseCommand:
- fix_amides
