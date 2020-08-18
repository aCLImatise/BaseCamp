class: CommandLineTool
id: ../../../MergeDgeSparse.cwl
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
- id: mechanisms_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- MergeDgeSparse
