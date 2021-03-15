class: CommandLineTool
id: box.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: 'PDB file containing a selection of residue numbers or PQR file containing
    the pocket. Accepted formats: pdb, pqr.'
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
- box
