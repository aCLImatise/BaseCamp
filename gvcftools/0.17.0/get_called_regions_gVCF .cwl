class: CommandLineTool
id: get_called_regions_gVCF .cwl
inputs:
- id: called_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- get_called_regions
- 'gVCF '
