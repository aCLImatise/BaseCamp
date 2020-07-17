class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sort_gro_residues.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_gro_path
  doc: Input GRO file name
  type: string
  inputBinding:
    prefix: --input_gro_path
- id: output_gro_path
  doc: Output sorted GRO file name
  type: string
  inputBinding:
    prefix: --output_gro_path
outputs: []
cwlVersion: v1.1
baseCommand:
- sort_gro_residues
