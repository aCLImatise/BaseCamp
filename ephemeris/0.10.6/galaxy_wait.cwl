class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/galaxy_wait.cwl
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
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- galaxy-wait
