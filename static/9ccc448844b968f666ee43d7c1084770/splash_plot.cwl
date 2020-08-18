class: CommandLineTool
id: ../../../splash_plot.halflifespergene.cwl
inputs:
- id: tc_rate
  doc: T->C conversion rate
  type: string
  inputBinding:
    prefix: --tc-rate
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: sim
  doc: ''
  type: string
  inputBinding:
    prefix: -sim
- id: slam
  doc: ''
  type: string
  inputBinding:
    prefix: -slam
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- plot.halflifespergene
