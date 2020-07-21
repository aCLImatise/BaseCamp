class: CommandLineTool
id: ../../../scg_run_doublet_model.cwl
inputs:
- id: config_file
  doc: ''
  type: string
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
- id: run_doublet_model
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- scg
- run_doublet_model
