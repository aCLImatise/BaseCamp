class: CommandLineTool
id: medpy_resample.py_input.cwl
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
- id: spacing
  doc: the desired voxel spacing in colon-separated values, e.g. 1.2,1.2,5.0
  type: string
  inputBinding:
    position: 2
- id: order
  doc: the bspline order, default is 2; means nearest neighbours; see also medpy_binary_resampling.py
  type: string
  inputBinding:
    prefix: --order
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
- medpy_resample.py
- input
