class: CommandLineTool
id: splash_plot.conversions.cwl
inputs:
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
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
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- splash
- plot.conversions
