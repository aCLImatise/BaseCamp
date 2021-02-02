class: CommandLineTool
id: ../../../arrow.cwl
inputs:
- id: in_verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_apollo_instance
  doc: name of apollo instance from /root/.apollo-
  type: string
  inputBinding:
    prefix: --apollo_instance
- id: in_log_level
  doc: "[debug|info|warn|error|critical]\nLogging level  [default: warn]"
  type: boolean
  inputBinding:
    prefix: --log-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
