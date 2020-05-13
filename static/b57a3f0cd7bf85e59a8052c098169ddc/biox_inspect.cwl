class: CommandLineTool
id: biox_inspect.cwl
inputs:
- id: help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
- id: json
  doc: '[Flag]'
  type: boolean
  inputBinding:
    prefix: --json
- id: show_only_errors
  doc: '[Flag]'
  type: boolean
  inputBinding:
    prefix: --show_only_errors
outputs: []
cwlVersion: v1.1
baseCommand:
- biox
- inspect
