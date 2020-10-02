class: CommandLineTool
id: duck_smd_runs.cwl
inputs:
- id: in_input
  doc: Equilibrated system as input
  type: string
  inputBinding:
    prefix: --input
- id: in_pickle
  doc: Pickle file
  type: File
  inputBinding:
    prefix: --pickle
- id: in_num_runs
  doc: Number of SMD runs.
  type: long
  inputBinding:
    prefix: --num-runs
- id: in_md_len
  doc: MD run length.
  type: long
  inputBinding:
    prefix: --md-len
- id: in_start_dist
  doc: Starting distance
  type: string
  inputBinding:
    prefix: --start-dist
- id: in_in_it_velocity
  doc: Initial velocity
  type: string
  inputBinding:
    prefix: --init-velocity
- id: in_gpu_id
  doc: GPU ID (optional); if not specified, runs on CPU only.
  type: string
  inputBinding:
    prefix: --gpu-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- duck_smd_runs
