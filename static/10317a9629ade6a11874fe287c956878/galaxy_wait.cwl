class: CommandLineTool
id: galaxy_wait.cwl
inputs:
- id: timeout
  doc: Galaxy startup timeout in seconds. The default value of 0 waits forever
  type: string
  inputBinding:
    prefix: --timeout
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
outputs: []
cwlVersion: v1.1
baseCommand:
- galaxy-wait
