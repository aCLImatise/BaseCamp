class: CommandLineTool
id: medpy_label_superimposition.py_image1.cwl
inputs:
- id: image_1
  doc: The first input label image.
  type: string
  inputBinding:
    position: 0
- id: image_2
  doc: The second input label image.
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
- medpy_label_superimposition.py
- image1
