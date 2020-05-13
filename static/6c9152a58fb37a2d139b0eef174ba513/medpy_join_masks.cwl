class: CommandLineTool
id: medpy_join_masks.py.cwl
inputs:
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 0
- id: inputs
  doc: Source volume(s).
  type: string
  inputBinding:
    position: 1
- id: operation
  doc: Combinatorial operation to conduct.
  type: string
  inputBinding:
    prefix: --operation
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
- medpy_join_masks.py
