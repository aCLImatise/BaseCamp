class: CommandLineTool
id: medpy_label_fit_to_mask.py.cwl
inputs:
- id: image
  doc: The input label image.
  type: string
  inputBinding:
    position: 0
- id: mask
  doc: The mask image to which to fit the label images.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: The output image.
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
- medpy_label_fit_to_mask.py
