class: CommandLineTool
id: ../../../renumber_structure.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_structure_path
  doc: Input structure file name
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_structure_path
  doc: Output structure file name
  type: string
  inputBinding:
    prefix: --output_structure_path
- id: output_mapping_json_path
  doc: Output mapping json file name
  type: string
  inputBinding:
    prefix: --output_mapping_json_path
outputs: []
cwlVersion: v1.1
baseCommand:
- renumber_structure
