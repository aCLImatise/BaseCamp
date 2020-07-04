class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/FilterBam.cwl
inputs:
- id: default_g
  doc: (default 4g)
  type: string
  inputBinding:
    prefix: -m
- id: final_command_line
  doc: final command line before executing
  type: string
  inputBinding:
    prefix: -v
- id: side_dot
  doc: 'Default value: null. This option may be specified 0 or more times. '
  type: string
  inputBinding:
    position: 0
- id: stripped_dot
  doc: 'Default value: null. This option may be specified 0 or more times. '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterBam
