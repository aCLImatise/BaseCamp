class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/acpype_params_cns.cwl
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
- id: output_path_par
  doc: 'Path to the PAR output file. Accepted formats: par.'
  type: string
  inputBinding:
    prefix: --output_path_par
- id: output_path_inp
  doc: 'Path to the INP output file. Accepted formats: inp.'
  type: string
  inputBinding:
    prefix: --output_path_inp
- id: output_path_top
  doc: 'Path to the TOP output file. Accepted formats: top.'
  type: string
  inputBinding:
    prefix: --output_path_top
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_cns
