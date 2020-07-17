class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seroba_summary_out_dir.cwl
inputs:
- id: se_rob_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seroba
- summary
- out_dir
