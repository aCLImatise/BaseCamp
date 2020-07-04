class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pdb2gmx.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_pdb_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_pdb_path
- id: output_gro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_gro_path
- id: output_top_zip_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_top_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pdb2gmx
