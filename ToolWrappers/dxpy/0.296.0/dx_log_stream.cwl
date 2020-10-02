class: CommandLineTool
id: dx_log_stream.cwl
inputs:
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-log-stream
