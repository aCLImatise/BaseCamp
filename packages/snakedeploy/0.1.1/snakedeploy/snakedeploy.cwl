class: CommandLineTool
id: snakedeploy.cwl
inputs:
- id: in_quiet
  doc: suppress additional output.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose output for logging.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_disable_color
  doc: Disable color for snakedeploy logging.
  type: boolean?
  inputBinding:
    prefix: --log-disable-color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snakedeploy:0.1.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- snakedeploy
