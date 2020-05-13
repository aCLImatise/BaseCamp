class: CommandLineTool
id: bedRestrictToPositions_in.bed_out.bed.cwl
inputs:
- id: restrict_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedRestrictToPositions
- in.bed
- out.bed
