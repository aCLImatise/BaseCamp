class: CommandLineTool
id: grompp.cwl
inputs:
- id: in_input_gro_path
  doc: "--input_top_zip_path INPUT_TOP_ZIP_PATH\n--output_tpr_path OUTPUT_TPR_PATH\n"
  type: File
  inputBinding:
    prefix: --input_gro_path
- id: in_input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
- id: in_input_cpt_path
  doc: ''
  type: File
  inputBinding:
    prefix: --input_cpt_path
- id: in_output_tpr_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_tpr_path
- id: in_input_top_zip_path
  doc: ''
  type: File
  inputBinding:
    prefix: --input_top_zip_path
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tpr_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_tpr_path)
cwlVersion: v1.1
baseCommand:
- grompp
