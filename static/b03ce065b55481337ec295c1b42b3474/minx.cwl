class: CommandLineTool
id: minx.cwl
inputs:
- id: tabulate
  doc: '[merlin]'
  type: boolean
  inputBinding:
    prefix: --tabulate
outputs: []
cwlVersion: v1.1
baseCommand:
- minx
