class: CommandLineTool
id: mutate.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: system
  doc: ''
  type: string
  inputBinding:
    prefix: --system
- id: step
  doc: ''
  type: string
  inputBinding:
    prefix: --step
- id: input_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_structure_path
- id: input_mutations_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_mutations_path
- id: input_b_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_b_structure_path
outputs: []
cwlVersion: v1.1
baseCommand:
- mutate
