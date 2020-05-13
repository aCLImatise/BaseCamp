class: CommandLineTool
id: acpype_params_ac.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path_frc_mod
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_frcmod
- id: output_path_in_pc_rd
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_inpcrd
- id: output_path_lib
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_lib
- id: output_path_prm_top
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_prmtop
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_ac
