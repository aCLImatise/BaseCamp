class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pmxmutate.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_b_structure_path
  doc: Path to the mutated input structure file
  type: string
  inputBinding:
    prefix: --input_b_structure_path
- id: input_structure_path
  doc: Path to the input structure file
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_structure_path
  doc: Path to the output structure file
  type: string
  inputBinding:
    prefix: --output_structure_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pmxmutate
