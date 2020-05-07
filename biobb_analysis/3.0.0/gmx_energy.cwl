class: CommandLineTool
id: gmx_energy.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_energy_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_energy_path
- id: output_x_vg_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_xvg_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_energy
