class: CommandLineTool
id: stringiphy_exons.gff.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: exons_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- stringiphy
- exons.gff
