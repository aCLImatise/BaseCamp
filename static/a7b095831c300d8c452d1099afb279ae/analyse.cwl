class: CommandLineTool
id: analyse.cwl
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
- id: input_a_x_vg_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_A_xvg_zip_path
- id: input_b_x_vg_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_B_xvg_zip_path
- id: output_result_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_result_path
- id: output_work_plot_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_work_plot_path
outputs: []
cwlVersion: v1.1
baseCommand:
- analyse
