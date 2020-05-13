class: CommandLineTool
id: genion.cwl
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
- id: output_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_gro_path
- id: input_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_zip_path
- id: output_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_top_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- genion
