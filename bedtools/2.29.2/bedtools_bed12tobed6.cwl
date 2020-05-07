class: CommandLineTool
id: bedtools_bed12tobed6.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: Force the score to be the (1-based) block number from the BED12.
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- bed12tobed6
