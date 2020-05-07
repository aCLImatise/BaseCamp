class: CommandLineTool
id: gmx_rms.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: input_t_raj_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: input_index_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_index_path
- id: output_x_vg_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_xvg_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_rms
