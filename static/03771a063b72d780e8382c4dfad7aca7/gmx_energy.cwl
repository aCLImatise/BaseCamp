class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmx_energy.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_energy_path
  doc: 'Path to the input EDR file. Accepted formats: edr.'
  type: string
  inputBinding:
    prefix: --input_energy_path
- id: output_x_vg_path
  doc: 'Path to the XVG output file. Accepted formats: xvg.'
  type: string
  inputBinding:
    prefix: --output_xvg_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_energy
