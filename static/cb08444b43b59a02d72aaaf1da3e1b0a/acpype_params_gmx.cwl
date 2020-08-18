class: CommandLineTool
id: ../../../acpype_params_gmx.cwl
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
- id: output_path_gro
  doc: 'Path to the GRO output file. Accepted formats: gro.'
  type: string
  inputBinding:
    prefix: --output_path_gro
- id: output_path_itp
  doc: 'Path to the ITP output file. Accepted formats: itp.'
  type: string
  inputBinding:
    prefix: --output_path_itp
- id: output_path_top
  doc: 'Path to the TOP output file. Accepted formats: top.'
  type: string
  inputBinding:
    prefix: --output_path_top
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_gmx
