class: CommandLineTool
id: acpype_params_gmx.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path_gro
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_gro
- id: output_path_itp
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_itp
- id: output_path_top
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_top
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_gmx
