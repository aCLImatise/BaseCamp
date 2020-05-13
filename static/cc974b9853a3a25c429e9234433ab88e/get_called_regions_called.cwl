class: CommandLineTool
id: get_called_regions_called.bed.cwl
inputs:
- id: gvc_f
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: called_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get_called_regions
- called.bed
