class: CommandLineTool
id: babel_add_hydrogens.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- babel_add_hydrogens
