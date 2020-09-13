class: CommandLineTool
id: ../../../arrow_metrics_ARGS.cwl
inputs:
- id: in_arrow
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_metrics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- metrics
- ARGS
