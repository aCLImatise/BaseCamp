class: CommandLineTool
id: arrow_metrics_COMMAND.cwl
inputs:
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- arrow
- metrics
- COMMAND
