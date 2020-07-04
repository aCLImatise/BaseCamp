class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/editconf.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_gro_path
- id: output_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_gro_path
outputs: []
cwlVersion: v1.1
baseCommand:
- editconf
