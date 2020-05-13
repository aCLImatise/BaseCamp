class: CommandLineTool
id: grompp.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: system
  doc: ''
  type: string
  inputBinding:
    prefix: --system
- id: step
  doc: ''
  type: string
  inputBinding:
    prefix: --step
- id: input_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_gro_path
- id: input_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_zip_path
- id: output_tpr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_tpr_path
- id: input_cpt_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_cpt_path
- id: input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
outputs: []
cwlVersion: v1.1
baseCommand:
- grompp
