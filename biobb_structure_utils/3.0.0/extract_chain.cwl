class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_chain.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_path
  doc: 'Input structure file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_structure_path
  doc: 'Output structure file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --output_structure_path
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_chain
