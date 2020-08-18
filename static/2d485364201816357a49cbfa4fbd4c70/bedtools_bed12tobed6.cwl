class: CommandLineTool
id: ../../../bedtools_bed12tobed6.cwl
inputs:
- id: force_score_based
  doc: Force the score to be the (1-based) block number from the BED12.
  type: boolean
  inputBinding:
    prefix: -n
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- bed12tobed6
