class: CommandLineTool
id: bl_pileup_stats.cwl
inputs:
- id: pile_up_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: specify the PILEUP input file
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify the HIST output file
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: 'specify the min OVERLAP (default: 0)'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-pileup-stats
