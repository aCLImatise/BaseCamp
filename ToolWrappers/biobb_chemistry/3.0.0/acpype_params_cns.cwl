class: CommandLineTool
id: acpype_params_cns.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_path
  doc: 'Path to the input file. Accepted formats: pdb, mdl, mol2.'
  type: File?
  inputBinding:
    prefix: --input_path
- id: in_output_path_par
  doc: 'Path to the PAR output file. Accepted formats: par.'
  type: File?
  inputBinding:
    prefix: --output_path_par
- id: in_output_path_inp
  doc: 'Path to the INP output file. Accepted formats: inp.'
  type: File?
  inputBinding:
    prefix: --output_path_inp
- id: in_output_path_top
  doc: "Path to the TOP output file. Accepted formats: top.\n"
  type: File?
  inputBinding:
    prefix: --output_path_top
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path_par
  doc: 'Path to the PAR output file. Accepted formats: par.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path_par)
- id: out_output_path_inp
  doc: 'Path to the INP output file. Accepted formats: inp.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path_inp)
- id: out_output_path_top
  doc: "Path to the TOP output file. Accepted formats: top.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path_top)
hints: []
cwlVersion: v1.1
baseCommand:
- acpype_params_cns
