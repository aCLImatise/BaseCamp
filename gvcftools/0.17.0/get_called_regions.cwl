class: CommandLineTool
id: ../../../get_called_regions.cwl
inputs:
- id: gvc_f
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: called_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get_called_regions
