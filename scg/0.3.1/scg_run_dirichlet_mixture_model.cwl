class: CommandLineTool
id: ../../../scg_run_dirichlet_mixture_model.cwl
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
- id: config_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: --config_file
- id: single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cell
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genotype_r
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: run_dirichlet_mixture_model
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- scg
- run_dirichlet_mixture_model
