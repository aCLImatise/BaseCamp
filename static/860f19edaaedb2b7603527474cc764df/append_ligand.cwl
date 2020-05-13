class: CommandLineTool
id: append_ligand.cwl
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
- id: input_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_top_zip_path
- id: input_itp_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_itp_path
- id: output_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_top_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- append_ligand
