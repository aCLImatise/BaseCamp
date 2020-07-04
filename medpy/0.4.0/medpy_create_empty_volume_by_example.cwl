class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_create_empty_volume_by_example.py.cwl
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
- id: example
  doc: The example volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_create_empty_volume_by_example.py
