class: CommandLineTool
id: genrestr.cwl
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
- id: input_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
- id: output_itp_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_itp_path
outputs: []
cwlVersion: v1.1
baseCommand:
- genrestr
