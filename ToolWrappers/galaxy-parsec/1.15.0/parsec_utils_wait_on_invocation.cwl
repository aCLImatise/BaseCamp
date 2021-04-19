class: CommandLineTool
id: parsec_utils_wait_on_invocation.cwl
inputs:
- id: in_exit_early
  doc: "Exit immediately after checking status rather than\nsleeping indefinitely"
  type: boolean?
  inputBinding:
    prefix: --exit_early
- id: in_back_off_min
  doc: Minimum time to sleep between checks, in seconds.
  type: double?
  inputBinding:
    prefix: --backoff_min
- id: in_back_off_max
  doc: Maximum time to sleep between checks, in seconds
  type: double?
  inputBinding:
    prefix: --backoff_max
- id: in_unknown
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- utils
- wait_on_invocation
