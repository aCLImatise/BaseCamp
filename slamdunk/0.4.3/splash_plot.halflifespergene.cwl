class: CommandLineTool
id: ../../../splash_plot.halflifespergene.cwl
inputs:
- id: in_sim_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --simDir
- id: in_slam_dunk_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --slamdunkDir
- id: in_time_points
  doc: ''
  type: string
  inputBinding:
    prefix: --timepoints
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_tc_rate
  doc: T->C conversion rate
  type: string
  inputBinding:
    prefix: --tc-rate
- id: in_bed
  doc: BED file
  type: File
  inputBinding:
    prefix: --bed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- splash
- plot.halflifespergene
