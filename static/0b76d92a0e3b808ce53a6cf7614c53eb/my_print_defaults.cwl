class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/my_print_defaults.cwl
inputs:
- id: verbose
  doc: Increase the output level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: groups
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- my_print_defaults
