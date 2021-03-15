class: CommandLineTool
id: bindingsite.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: 'Path to the PDB structure where the binding site is to be found. Accepted
    formats: pdb.'
  type: File?
  inputBinding:
    prefix: --input_pdb_path
- id: in_input_clusters_zip
  doc: 'Path to the ZIP file with all the PDB members of the identity cluster. Accepted
    formats: zip.'
  type: File?
  inputBinding:
    prefix: --input_clusters_zip
- id: in_output_pdb_path
  doc: "Path to the PDB containig the residues belonging to the binding site. Accepted\
    \ formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Path to the PDB containig the residues belonging to the binding site. Accepted\
    \ formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- bindingsite
