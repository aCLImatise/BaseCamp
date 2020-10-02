class: CommandLineTool
id: scg_run_doublet_model.cwl
inputs:
- id: in_config_file
  doc: ''
  type: File
  inputBinding:
    prefix: --config_file
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cell
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genotype_r
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_run_doublet_model
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scg
- run_doublet_model
