class: CommandLineTool
id: pdb.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_pdb_path
  doc: "Path to the output PDB file. Accepted formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Path to the output PDB file. Accepted formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_io:3.5.1--py_0
cwlVersion: v1.1
baseCommand:
- pdb
