class: CommandLineTool
id: medpy_split_xd_to_xminus1d.py.cwl
inputs:
- id: input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Target volumes. Has to include the sequence "{}" in the place where the volume
    number should be placed.
  type: string
  inputBinding:
    position: 1
- id: dimension
  doc: The dimension along which to split (starting from 0).
  type: string
  inputBinding:
    position: 2
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
- medpy_split_xd_to_xminus1d.py
