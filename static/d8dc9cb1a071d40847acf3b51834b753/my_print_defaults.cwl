class: CommandLineTool
id: my_print_defaults.cwl
inputs:
- id: verbose
  doc: Increase the output level
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- my_print_defaults
