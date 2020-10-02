class: CommandLineTool
id: galaxy_wait.cwl
inputs:
- id: in_timeout
  doc: "Galaxy startup timeout in seconds. The default value\nof 0 waits forever"
  type: long
  inputBinding:
    prefix: --timeout
- id: in_verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_galaxy
  doc: "Target Galaxy instance URL/IP address\n"
  type: string
  inputBinding:
    prefix: --galaxy
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- galaxy-wait
