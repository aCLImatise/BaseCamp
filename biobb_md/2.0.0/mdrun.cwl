class: CommandLineTool
id: mdrun.cwl
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
- id: input_tpr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_tpr_path
- id: output_trr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_trr_path
- id: output_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_gro_path
- id: output_edr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_edr_path
- id: output_log_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_log_path
- id: output_xtc_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_xtc_path
- id: output_cpt_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_cpt_path
- id: output_d_hdl_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_dhdl_path
outputs: []
cwlVersion: v1.1
baseCommand:
- mdrun
