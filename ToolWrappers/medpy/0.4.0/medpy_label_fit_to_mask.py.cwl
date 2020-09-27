class: CommandLineTool
id: medpy_label_fit_to_mask.py.cwl
inputs:
- id: in_display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_image
  doc: The input label image.
  type: string
  inputBinding:
    position: 0
- id: in_mask
  doc: The mask image to which to fit the label images.
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: The output image.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_label_fit_to_mask.py
