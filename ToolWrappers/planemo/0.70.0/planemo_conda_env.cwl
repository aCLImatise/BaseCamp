class: CommandLineTool
id: planemo_conda_env.cwl
inputs:
- id: in_cond_a_prefix
  doc: Conda prefix to use for conda dependency
  type: Directory?
  inputBinding:
    prefix: --conda_prefix
- id: in_cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean?
  inputBinding:
    prefix: --conda_debug
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string?
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_cond_a_use_local
  doc: "Use locally built packages while building\nConda environments."
  type: boolean?
  inputBinding:
    prefix: --conda_use_local
- id: in_tool_dot
  doc: "$ . <(planemo conda_env seqtk_seq.xml)\nDeactivate environment with conda_env_deactivate\n\
    (seqtk_seq_v6) $ which seqtk\n/home/planemo/miniconda2/envs/jobdepsDkzcjjfecc6d406196737781ff4456ec60975c137e04884e4f4b05dc68192f7cec4656/bin/seqtk\n\
    (seqtk_seq_v6) $ conda_env_deactivate\n$"
  type: string
  inputBinding:
    position: 0
- id: in_commands_dot
  doc: --conda_exec FILE               Location of conda executable.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- conda_env
