class: CommandLineTool
id: mdrun.cwl
inputs:
- id: in_input_tpr_path
  doc: "--output_trr_path OUTPUT_TRR_PATH\n--output_gro_path OUTPUT_GRO_PATH\n--output_edr_path\
    \ OUTPUT_EDR_PATH\n--output_log_path OUTPUT_LOG_PATH\n"
  type: File
  inputBinding:
    prefix: --input_tpr_path
- id: in_output_d_hdl_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_dhdl_path
- id: in_output_cpt_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_cpt_path
- id: in_output_xtc_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_xtc_path
- id: in_output_log_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_log_path
- id: in_output_edr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_edr_path
- id: in_output_gro_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_gro_path
- id: in_output_trr_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_trr_path
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_d_hdl_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_d_hdl_path)
- id: out_output_cpt_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_cpt_path)
- id: out_output_xtc_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_xtc_path)
- id: out_output_log_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_log_path)
- id: out_output_gro_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_gro_path)
cwlVersion: v1.1
baseCommand:
- mdrun
