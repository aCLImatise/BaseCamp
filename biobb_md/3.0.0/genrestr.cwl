class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genrestr.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
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
