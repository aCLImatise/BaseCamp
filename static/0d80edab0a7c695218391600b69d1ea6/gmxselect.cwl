class: CommandLineTool
id: ../../../gmxselect.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: input_structure_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_structure_path
- id: output_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_ndx_path
- id: input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmxselect
