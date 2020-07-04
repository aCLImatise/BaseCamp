class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_info.py.cwl
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
- id: input
  doc: The image to analyse.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_info.py
