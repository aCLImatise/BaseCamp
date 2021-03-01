class: CommandLineTool
id: splash_plot.conversions.cwl
inputs:
- id: in_slam_dunk_dir
  doc: "T->C conversion rate\n"
  type: string?
  inputBinding:
    prefix: --slamdunkDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- plot.conversions
