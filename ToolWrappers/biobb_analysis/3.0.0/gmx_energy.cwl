class: CommandLineTool
id: gmx_energy.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_input_energy_path
  doc: 'Path to the input EDR file. Accepted formats: edr.'
  type: File
  inputBinding:
    prefix: --input_energy_path
- id: in_output_x_vg_path
  doc: "Path to the XVG output file. Accepted formats: xvg.\n"
  type: File
  inputBinding:
    prefix: --output_xvg_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_x_vg_path
  doc: "Path to the XVG output file. Accepted formats: xvg.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_x_vg_path)
cwlVersion: v1.1
baseCommand:
- gmx_energy
