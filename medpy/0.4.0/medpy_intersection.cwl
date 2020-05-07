class: CommandLineTool
id: medpy_intersection.py_input1.cwl
inputs:
- id: input_1
  doc: First source volume.
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: Second source volume.
  type: string
  inputBinding:
    position: 1
- id: output_1
  doc: First target volume.
  type: string
  inputBinding:
    position: 2
- id: output_2
  doc: Second target volume.
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
- medpy_intersection.py
- input1
