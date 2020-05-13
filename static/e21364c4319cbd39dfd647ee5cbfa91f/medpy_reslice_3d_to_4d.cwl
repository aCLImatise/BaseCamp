class: CommandLineTool
id: medpy_reslice_3d_to_4d.py.cwl
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
- id: dimension
  doc: The dimension in which to perform the cut (starting from 0).
  type: string
  inputBinding:
    position: 2
- id: offset
  doc: The offset between the slices.
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
- medpy_reslice_3d_to_4d.py
