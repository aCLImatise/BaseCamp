class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pdb_variants.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: output_mutations_list_txt
  doc: Output variants list text file name
  type: string
  inputBinding:
    prefix: --output_mutations_list_txt
outputs: []
cwlVersion: v1.1
baseCommand:
- pdb_variants
