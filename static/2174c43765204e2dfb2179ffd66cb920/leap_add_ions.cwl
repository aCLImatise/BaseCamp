class: CommandLineTool
id: leap_add_ions.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: 'Input 3D structure PDB file. Accepted formats: pdb.'
  type: File?
  inputBinding:
    prefix: --input_pdb_path
- id: in_input_lib_path
  doc: 'Input ligand library parameters file. Accepted formats: lib, zip.'
  type: File?
  inputBinding:
    prefix: --input_lib_path
- id: in_input_frc_mod_path
  doc: 'Input ligand frcmod parameters file. Accepted formats: frcmod, zip.'
  type: File?
  inputBinding:
    prefix: --input_frcmod_path
- id: in_input_params_path
  doc: 'Additional leap parameter files to load with loadAmberParams Leap command.
    Accepted formats: leapin, in, txt, zip.'
  type: File?
  inputBinding:
    prefix: --input_params_path
- id: in_input_source_path
  doc: 'Additional leap command files to load with source Leap command. Accepted formats:
    leapin, in, txt, zip.'
  type: File?
  inputBinding:
    prefix: --input_source_path
- id: in_output_pdb_path
  doc: 'Output 3D structure PDB file matching the topology file. Accepted formats:
    pdb.'
  type: File?
  inputBinding:
    prefix: --output_pdb_path
- id: in_output_top_path
  doc: 'Output topology file (AMBER ParmTop). Accepted formats: top.'
  type: File?
  inputBinding:
    prefix: --output_top_path
- id: in_output_crd_path
  doc: "Output coordinates file (AMBER crd). Accepted formats: crd.\n"
  type: File?
  inputBinding:
    prefix: --output_crd_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: 'Output 3D structure PDB file matching the topology file. Accepted formats:
    pdb.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
- id: out_output_top_path
  doc: 'Output topology file (AMBER ParmTop). Accepted formats: top.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_top_path)
- id: out_output_crd_path
  doc: "Output coordinates file (AMBER crd). Accepted formats: crd.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_crd_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- leap_add_ions
