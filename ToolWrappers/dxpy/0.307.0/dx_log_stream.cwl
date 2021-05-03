class: CommandLineTool
id: dx_log_stream.cwl
inputs:
- id: in_level
  doc: Logging level to use
  type: string?
  inputBinding:
    prefix: --level
- id: in_source
  doc: "Source ID to use\n"
  type: string?
  inputBinding:
    prefix: --source
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-log-stream
