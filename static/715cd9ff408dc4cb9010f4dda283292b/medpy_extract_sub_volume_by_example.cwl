class: CommandLineTool
id: medpy_extract_sub_volume_by_example.py.cwl
inputs:
- id: image
  doc: The input image.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The resulting sub-volume.
  type: string
  inputBinding:
    position: 1
- id: mask
  doc: A mask image containing a single foreground object (non-zero).
  type: string
  inputBinding:
    position: 2
- id: offset
  doc: Set an offset by which the extracted sub-volume size should be increased in
    all directions.
  type: string
  inputBinding:
    prefix: --offset
- id: f
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume_by_example.py
