class: CommandLineTool
id: bed12ToBed6.cwl
inputs:
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed12tobed6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: n
  doc: Force the score to be the (1-based) block number from the BED12.
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- bed12ToBed6
