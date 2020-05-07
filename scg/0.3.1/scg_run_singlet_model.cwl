class: CommandLineTool
id: scg_run_singlet_model.cwl
inputs:
- id: seed
  doc: Set random seed so results can be reproduced. By default a random seed is chosen.
  type: string
  inputBinding:
    prefix: --seed
- id: labels_file
  doc: Path of file with initial labels to use.
  type: string
  inputBinding:
    prefix: --labels_file
- id: use_position_specific_error_rate
  doc: If an error rate will be estimated for each position.
  type: boolean
  inputBinding:
    prefix: --use_position_specific_error_rate
- id: samples_file
  doc: Path mapping cells to samples. If set each sample will have a separate mixing
    proportion.
  type: string
  inputBinding:
    prefix: --samples_file
outputs: []
cwlVersion: v1.1
baseCommand:
- scg
- run_singlet_model
