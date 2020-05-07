class: CommandLineTool
id: medpy_extract_sub_volume.py_image.cwl
inputs:
- id: image
  doc: The source volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The target volume.
  type: string
  inputBinding:
    position: 1
- id: volume
  doc: 'The coordinated of the sub-volume of the images that should be extracted.
    Example: 30:59,40:67,45:75 for a 3D image. See -h for more information.'
  type: string
  inputBinding:
    position: 2
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
- medpy_extract_sub_volume.py
- image
