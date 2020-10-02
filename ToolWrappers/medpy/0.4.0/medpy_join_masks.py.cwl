class: CommandLineTool
id: medpy_join_masks.py.cwl
inputs:
- id: in_operation
  doc: Combinatorial operation to conduct.
  type: string
  inputBinding:
    prefix: --operation
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
- id: in_output
  doc: Target volume.
  type: string
  inputBinding:
    position: 0
- id: in_inputs
  doc: Source volume(s).
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_join_masks.py
