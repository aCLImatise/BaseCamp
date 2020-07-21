class: CommandLineTool
id: ../../../planemo_conda_env.cwl
inputs:
- id: cond_a_prefix
  doc: Conda prefix to use for conda dependency commands.
  type: Directory
  inputBinding:
    prefix: --conda_prefix
- id: cond_a_exec
  doc: Location of conda executable.
  type: File
  inputBinding:
    prefix: --conda_exec
- id: cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean
  inputBinding:
    prefix: --conda_debug
- id: cond_a_ensure_channels
  doc: Ensure conda is configured with specified comma separated list of channels.
  type: string
  inputBinding:
    prefix: --conda_ensure_channels
- id: cond_a_use_local
  doc: Use locally built packages while building Conda environments.
  type: boolean
  inputBinding:
    prefix: --conda_use_local
- id: tool_dot
  doc: $ . <(planemo conda_env seqtk_seq.xml) Deactivate environment with conda_env_deactivate
    (seqtk_seq_v6) $ which seqtk /home/planemo/miniconda2/envs/jobdepsDkzcjjfecc6d406196737781ff4456ec60975c137e04884e4f4b05dc68192f7cec4656/bin/seqtk
    (seqtk_seq_v6) $ conda_env_deactivate $
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- conda_env
