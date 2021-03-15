class: CommandLineTool
id: autodock_vina.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_log_path
  doc: 'Path to the log file. Accepted formats: log.'
  type: File?
  inputBinding:
    prefix: --output_log_path
- id: in_input_ligand_pdb_qt_path
  doc: 'Path to the input PDBQT ligand. Accepted formats: pdbqt.'
  type: File?
  inputBinding:
    prefix: --input_ligand_pdbqt_path
- id: in_input_receptor_pdb_qt_path
  doc: 'Path to the input PDBQT receptor. Accepted formats: pdbqt.'
  type: File?
  inputBinding:
    prefix: --input_receptor_pdbqt_path
- id: in_input_box_path
  doc: 'Path to the PDB containig the residues belonging to the binding site. Accepted
    formats: pdb.'
  type: File?
  inputBinding:
    prefix: --input_box_path
- id: in_output_pdb_qt_path
  doc: "Path to the output PDBQT file. Accepted formats: pdbqt.\n"
  type: File?
  inputBinding:
    prefix: --output_pdbqt_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_log_path
  doc: 'Path to the log file. Accepted formats: log.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_log_path)
- id: out_output_pdb_qt_path
  doc: "Path to the output PDBQT file. Accepted formats: pdbqt.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_qt_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- autodock_vina
