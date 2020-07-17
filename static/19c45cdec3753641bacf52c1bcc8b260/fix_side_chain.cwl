class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fix_side_chain.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_pdb_path
  doc: Input PDB file name
  type: string
  inputBinding:
    prefix: --input_pdb_path
- id: output_pdb_path
  doc: Output PDB file name
  type: string
  inputBinding:
    prefix: --output_pdb_path
outputs: []
cwlVersion: v1.1
baseCommand:
- fix_side_chain
