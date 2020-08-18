class: CommandLineTool
id: ../../../bp_chaos_plot.pl.cwl
inputs:
- id: i_slash_input
  doc: ''
  type: string
  inputBinding:
    prefix: -i/--input
- id: f_slash_format
  doc: ''
  type: string
  inputBinding:
    prefix: -f/--format
- id: chaos_plot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_chaos_plot.pl
