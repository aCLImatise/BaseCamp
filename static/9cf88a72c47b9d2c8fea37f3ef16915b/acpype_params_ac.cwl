class: CommandLineTool
id: ../../../acpype_params_ac.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: 'Path to the input file. Accepted formats: pdb, mdl, mol2.'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path_frc_mod
  doc: 'Path to the FRCMOD output file. Accepted formats: frcmod.'
  type: string
  inputBinding:
    prefix: --output_path_frcmod
- id: output_path_in_pc_rd
  doc: 'Path to the INPCRD output file. Accepted formats: inpcrd.'
  type: string
  inputBinding:
    prefix: --output_path_inpcrd
- id: output_path_lib
  doc: 'Path to the LIB output file. Accepted formats: lib.'
  type: string
  inputBinding:
    prefix: --output_path_lib
- id: output_path_prm_top
  doc: 'Path to the PRMTOP output file. Accepted formats: prmtop.'
  type: string
  inputBinding:
    prefix: --output_path_prmtop
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_ac
