class: CommandLineTool
id: splash_plot.halflifespergene.cwl
inputs:
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_slam
  doc: ''
  type: string
  inputBinding:
    prefix: -slam
- id: in_sim
  doc: ''
  type: string
  inputBinding:
    prefix: -sim
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splash
- plot.halflifespergene
