class: CommandLineTool
id: bioconvert_stats.cwl
inputs:
- id: in_no_plot
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_bio_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioconvert_stats
