class: CommandLineTool
id: amber_to_pdb.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_top_path
  doc: 'AMBER topology file. Accepted formats: top, parmtop, prmtop.'
  type: File?
  inputBinding:
    prefix: --input_top_path
- id: in_input_crd_path
  doc: 'AMBER coordinates file. Accepted formats: crd, mdcrd, inpcrd.'
  type: File?
  inputBinding:
    prefix: --input_crd_path
- id: in_output_pdb_path
  doc: "Structure PDB file. Accepted formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Structure PDB file. Accepted formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- amber_to_pdb
