class: CommandLineTool
id: gmx_image.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_t_raj_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: input_top_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_path
- id: input_index_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_index_path
- id: output_t_raj_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_traj_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_image
