class: CommandLineTool
id: splash_plot.halflifespergene.cwl
inputs:
- id: in_slam_dunk_dir
  doc: T->C conversion rate
  type: string?
  inputBinding:
    prefix: --slamdunkDir
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- plot.halflifespergene
