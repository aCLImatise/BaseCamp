class: CommandLineTool
id: stringiphy_OPTIONS.cwl
inputs:
- id: exons_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stringiphy
- OPTIONS
