class: CommandLineTool
id: medpy_swap_dimensions.py.cwl
inputs:
- id: input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
- id: dimension_1
  doc: First dimension to swap (starting from 0).
  type: string
  inputBinding:
    position: 2
- id: dimension_2
  doc: Second dimension to swap (starting from 0).
  type: string
  inputBinding:
    position: 3
- id: v
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_swap_dimensions.py
