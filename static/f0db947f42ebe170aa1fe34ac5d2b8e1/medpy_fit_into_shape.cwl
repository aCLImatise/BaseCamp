class: CommandLineTool
id: medpy_fit_into_shape.py_input.cwl
inputs:
- id: input
  doc: the input image
  type: string
  inputBinding:
    position: 0
- id: output
  doc: the output image
  type: string
  inputBinding:
    position: 1
- id: shape
  doc: the desired shape in colon-separated values, e.g. 255,255,32
  type: string
  inputBinding:
    position: 2
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_fit_into_shape.py
- input
