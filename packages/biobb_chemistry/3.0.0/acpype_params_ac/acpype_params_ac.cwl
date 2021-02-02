class: CommandLineTool
id: acpype_params_ac.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_input_path
  doc: 'Path to the input file. Accepted formats: pdb, mdl, mol2.'
  type: File
  inputBinding:
    prefix: --input_path
- id: in_output_path_frc_mod
  doc: 'Path to the FRCMOD output file. Accepted formats: frcmod.'
  type: File
  inputBinding:
    prefix: --output_path_frcmod
- id: in_output_path_in_pc_rd
  doc: 'Path to the INPCRD output file. Accepted formats: inpcrd.'
  type: File
  inputBinding:
    prefix: --output_path_inpcrd
- id: in_output_path_lib
  doc: 'Path to the LIB output file. Accepted formats: lib.'
  type: File
  inputBinding:
    prefix: --output_path_lib
- id: in_output_path_prm_top
  doc: "Path to the PRMTOP output file. Accepted formats: prmtop.\n"
  type: File
  inputBinding:
    prefix: --output_path_prmtop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path_frc_mod
  doc: 'Path to the FRCMOD output file. Accepted formats: frcmod.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_frc_mod)
- id: out_output_path_in_pc_rd
  doc: 'Path to the INPCRD output file. Accepted formats: inpcrd.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_in_pc_rd)
- id: out_output_path_lib
  doc: 'Path to the LIB output file. Accepted formats: lib.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_lib)
- id: out_output_path_prm_top
  doc: "Path to the PRMTOP output file. Accepted formats: prmtop.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_prm_top)
cwlVersion: v1.1
baseCommand:
- acpype_params_ac
