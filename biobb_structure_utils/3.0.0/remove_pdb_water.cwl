class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_pdb_water.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_pdb_path
  doc: Input pdb file name
  type: string
  inputBinding:
    prefix: --input_pdb_path
- id: output_pdb_path
  doc: Output pdb file name
  type: string
  inputBinding:
    prefix: --output_pdb_path
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_pdb_water
