class: CommandLineTool
id: medpy_label_count.py.cwl
inputs:
- id: images
  doc: One or more label images.
  type: string
  inputBinding:
    position: 0
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
- medpy_label_count.py
