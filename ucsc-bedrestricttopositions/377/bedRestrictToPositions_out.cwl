class: CommandLineTool
id: bedRestrictToPositions_out.bed.cwl
inputs:
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: restrict_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedRestrictToPositions
- out.bed
