class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_graphcut_label_wsplit.py.cwl
inputs:
- id: set_flag_override
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
- id: gradient
  doc: The gradient magnitude image of the image to segment.
  type: string
  inputBinding:
    position: 0
- id: region
  doc: The region image of the image to segment.
  type: string
  inputBinding:
    position: 1
- id: markers
  doc: Binary image containing the foreground (=1) and background (=2) markers.
  type: string
  inputBinding:
    position: 2
- id: output
  doc: The output image containing the segmentation.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_graphcut_label_wsplit.py
