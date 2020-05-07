class: CommandLineTool
id: acpype_params_cns.cwl
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
- id: output_path_par
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_par
- id: output_path_inp
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_inp
- id: output_path_top
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path_top
outputs: []
cwlVersion: v1.1
baseCommand:
- acpype_params_cns
