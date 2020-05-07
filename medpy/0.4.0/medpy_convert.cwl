class: CommandLineTool
id: medpy_convert.py_input.cwl
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
- medpy_convert.py
- input
