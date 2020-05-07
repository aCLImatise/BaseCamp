class: CommandLineTool
id: gmx_cluster.cwl
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
- id: output_pdb_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_pdb_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_cluster
