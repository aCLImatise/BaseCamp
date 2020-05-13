class: CommandLineTool
id: medpy_merge.py_input1.cwl
inputs:
- id: input_1
  doc: Source volume one.
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: Source volume two.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 2
- id: e
  doc: Instead of copying the voxel data, create an empty copy conserving all meta-data
    if possible.
  type: boolean
  inputBinding:
    prefix: -e
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
- medpy_merge.py
- input1
