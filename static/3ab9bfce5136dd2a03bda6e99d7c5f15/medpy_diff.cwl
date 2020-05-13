class: CommandLineTool
id: medpy_diff.py_input1.cwl
inputs:
- id: input_1
  doc: Source volume one.
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: Source volume two.
  type: string
  inputBinding:
    position: 1
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
- medpy_diff.py
- input1
