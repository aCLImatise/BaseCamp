class: CommandLineTool
id: mean.cwl
inputs:
- id: in_threshold
  doc: The minimum probability threshold (default=1e-30)
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_option_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mean
