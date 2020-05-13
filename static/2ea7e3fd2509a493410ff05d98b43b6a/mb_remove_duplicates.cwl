class: CommandLineTool
id: mb_remove_duplicates.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
