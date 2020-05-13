class: CommandLineTool
id: gmx_trjconv_str.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: input_top_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_path
- id: input_index_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_index_path
- id: output_str_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_str_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_trjconv_str
