class: CommandLineTool
id: ../../../cat_pdb.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_one
  doc: 'Input structure 1 file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --input_structure1
- id: input_structure_two
  doc: 'Input structure 2 file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --input_structure2
- id: output_structure_path
  doc: 'Output structure file path. Accepted formats: pdb.'
  type: string
  inputBinding:
    prefix: --output_structure_path
outputs: []
cwlVersion: v1.1
baseCommand:
- cat_pdb
