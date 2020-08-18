class: CommandLineTool
id: ../../../extract_heteroatoms.cwl
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
- id: output_heteroatom_path
  doc: 'Output heteroatom file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --output_heteroatom_path
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_heteroatoms
