class: CommandLineTool
id: ../../../medpy_join_masks.py.cwl
inputs:
- id: operation
  doc: Combinatorial operation to conduct.
  type: string
  inputBinding:
    prefix: --operation
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
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_join_masks.py
