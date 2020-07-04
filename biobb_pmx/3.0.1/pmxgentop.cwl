class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pmxgentop.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_top_zip_path
  doc: Path to the input topology zip file
  type: string
  inputBinding:
    prefix: --input_top_zip_path
- id: output_top_zip_path
  doc: Path to the output topology zip file
  type: string
  inputBinding:
    prefix: --output_top_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pmxgentop
