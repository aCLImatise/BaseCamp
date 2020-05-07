class: CommandLineTool
id: cpptraj_strip.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_top_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_path
- id: input_t_raj_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: output_c_ppt_raj_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_cpptraj_path
outputs: []
cwlVersion: v1.1
baseCommand:
- cpptraj_strip
