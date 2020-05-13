class: CommandLineTool
id: bedRestrictToPositions_in.bed_restrict.bed.cwl
inputs:
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedRestrictToPositions
- in.bed
- restrict.bed
