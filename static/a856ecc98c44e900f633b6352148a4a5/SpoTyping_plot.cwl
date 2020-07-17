class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SpoTyping_plot.r.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: xls_two_csv_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- SpoTyping_plot.r
