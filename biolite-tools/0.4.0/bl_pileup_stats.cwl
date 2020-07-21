class: CommandLineTool
id: ../../../bl_pileup_stats.cwl
inputs:
- id: specify_pileup_file
  doc: specify the PILEUP input file
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_hist_file
  doc: specify the HIST output file
  type: boolean
  inputBinding:
    prefix: -o
- id: specify_min_default
  doc: 'specify the min OVERLAP (default: 0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: pile_up_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-pileup-stats
