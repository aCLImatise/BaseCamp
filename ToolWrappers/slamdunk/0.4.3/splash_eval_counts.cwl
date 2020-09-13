class: CommandLineTool
id: ../../../splash_eval_counts.cwl
inputs:
- id: in_simulated
  doc: ''
  type: string
  inputBinding:
    prefix: --simulated
- id: in_slam_dun
  doc: ''
  type: string
  inputBinding:
    prefix: --slamdun
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --outputFile
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
- eval-counts
