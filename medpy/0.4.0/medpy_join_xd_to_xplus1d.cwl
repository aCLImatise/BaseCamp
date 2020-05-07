class: CommandLineTool
id: medpy_join_xd_to_xplus1d.py.cwl
inputs:
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 0
- id: inputs
  doc: Source volumes of same shape and dtype.
  type: string
  inputBinding:
    position: 1
- id: s
  doc: The voxel spacing of the newly created dimension. Default is 1.
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: The position where to put the new dimension starting from 0. Standard behaviour
    is to place it in the first position.
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: Ignore if the images datatypes differ.
  type: boolean
  inputBinding:
    prefix: -i
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
- medpy_join_xd_to_xplus1d.py
