class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_label_fit_to_mask.py.cwl
inputs:
- id: display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
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
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_label_fit_to_mask.py
