class: CommandLineTool
id: extract_model_pdbqt.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_qt_path
  doc: 'Input PDBQT file. Accepted formats: pdbqt.'
  type: File?
  inputBinding:
    prefix: --input_pdbqt_path
- id: in_output_pdb_qt_path
  doc: "Output PDBQT file. Accepted formats: pdbqt.\n"
  type: File?
  inputBinding:
    prefix: --output_pdbqt_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_qt_path
  doc: "Output PDBQT file. Accepted formats: pdbqt.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_qt_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_vs:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- extract_model_pdbqt
