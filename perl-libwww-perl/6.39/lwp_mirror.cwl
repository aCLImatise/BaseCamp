class: CommandLineTool
id: ../../../lwp_mirror.cwl
inputs:
- id: print_version_number
  doc: print version number of program
  type: boolean
  inputBinding:
    prefix: -v
- id: set_timeout_value
  doc: Set timeout value
  type: string
  inputBinding:
    prefix: -t
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-mirror
