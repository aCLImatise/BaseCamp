class: CommandLineTool
id: duck_smd_runs.cwl
inputs:
- id: input
  doc: Equilibrated system as input
  type: string
  inputBinding:
    prefix: --input
- id: pickle
  doc: Pickle file
  type: string
  inputBinding:
    prefix: --pickle
- id: num_runs
  doc: Number of SMD runs.
  type: string
  inputBinding:
    prefix: --num-runs
- id: md_len
  doc: MD run length.
  type: string
  inputBinding:
    prefix: --md-len
- id: start_dist
  doc: Starting distance
  type: string
  inputBinding:
    prefix: --start-dist
- id: in_it_velocity
  doc: Initial velocity
  type: string
  inputBinding:
    prefix: --init-velocity
- id: gpu_id
  doc: GPU ID (optional); if not specified, runs on CPU only.
  type: string
  inputBinding:
    prefix: --gpu-id
outputs: []
cwlVersion: v1.1
baseCommand:
- duck_smd_runs
