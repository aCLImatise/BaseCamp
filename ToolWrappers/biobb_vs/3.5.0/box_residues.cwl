class: CommandLineTool
id: box_residues.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: "PDB protein structure for which the box will be build. Its size and center\
    \ will be set around the 'resid_list' property once mapped against this PDB. Accepted\
    \ formats: pdb."
  type: File?
  inputBinding:
    prefix: --input_pdb_path
- id: in_output_pdb_path
  doc: "PDB including the annotation of the box center and size as REMARKs. Accepted\
    \ formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "PDB including the annotation of the box center and size as REMARKs. Accepted\
    \ formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- box_residues
