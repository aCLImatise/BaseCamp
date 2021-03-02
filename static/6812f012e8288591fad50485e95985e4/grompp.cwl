class: CommandLineTool
id: grompp.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_ndx_path
  doc: ''
  type: string?
  inputBinding:
    prefix: --input_ndx_path
- id: in_input_cpt_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_cpt_path
- id: in_output_tpr_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_tpr_path
- id: in_input_top_zip_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_top_zip_path
- id: in_input_gro_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --input_gro_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tpr_path
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tpr_path)
hints: []
cwlVersion: v1.1
baseCommand:
- grompp
