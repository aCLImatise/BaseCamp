class: CommandLineTool
id: fpocket_select.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pockets_zip
  doc: 'Path to all the pockets found by fpocket. Accepted formats: zip.'
  type: File?
  inputBinding:
    prefix: --input_pockets_zip
- id: in_output_pocket_pdb
  doc: 'Path to the PDB file with the cavity found by fpocket. Accepted formats: pdb.'
  type: File?
  inputBinding:
    prefix: --output_pocket_pdb
- id: in_output_pocket_pqr
  doc: "Path to the PQR file with the pocket found by fpocket. Accepted formats: pqr.\n"
  type: File?
  inputBinding:
    prefix: --output_pocket_pqr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- fpocket_select
