class: CommandLineTool
id: medpy_binary_resampling.py.cwl
inputs:
- id: in_order
  doc: the bspline order, default is 0 (= nearest neighbour)
  type: long
  inputBinding:
    prefix: --order
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: in_input
  doc: the input image
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: the output image
  type: string
  inputBinding:
    position: 1
- id: in_spacing
  doc: "the desired voxel spacing in colon-separated values,\ne.g. 1.2,1.2,5.0"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_binary_resampling.py
