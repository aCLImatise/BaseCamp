class: CommandLineTool
id: arrow.cwl
inputs:
- id: verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: apollo_instance
  doc: 'name of apollo instance from /home/ubuntu /.apollo-arrow.yml  [default: __default;
    required]'
  type: string
  inputBinding:
    prefix: --apollo_instance
- id: log_level
  doc: '[debug|info|warn|error|critical] Logging level  [default: warn]'
  type: boolean
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- arrow
