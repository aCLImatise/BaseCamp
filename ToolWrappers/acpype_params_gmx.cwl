class: CommandLineTool
id: acpype_params_gmx.cwl
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
- id: in_output_path_gro
  doc: 'Path to the GRO output file. Accepted formats: gro.'
  type: File
  inputBinding:
    prefix: --output_path_gro
- id: in_output_path_itp
  doc: 'Path to the ITP output file. Accepted formats: itp.'
  type: File
  inputBinding:
    prefix: --output_path_itp
- id: in_output_path_top
  doc: "Path to the TOP output file. Accepted formats: top.\n"
  type: File
  inputBinding:
    prefix: --output_path_top
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path_gro
  doc: 'Path to the GRO output file. Accepted formats: gro.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_gro)
- id: out_output_path_itp
  doc: 'Path to the ITP output file. Accepted formats: itp.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_itp)
- id: out_output_path_top
  doc: "Path to the TOP output file. Accepted formats: top.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_top)
cwlVersion: v1.1
baseCommand:
- acpype_params_gmx
