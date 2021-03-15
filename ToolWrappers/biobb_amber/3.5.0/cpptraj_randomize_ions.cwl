class: CommandLineTool
id: cpptraj_randomize_ions.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_pdb_path
  doc: "Linear (unfolded) 3D structure PDB file. Accepted formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Linear (unfolded) 3D structure PDB file. Accepted formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- cpptraj_randomize_ions
