class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merlin.cwl
inputs:
- id: tabulate
  doc: '[merlin]'
  type: boolean
  inputBinding:
    prefix: --tabulate
outputs: []
cwlVersion: v1.1
baseCommand:
- merlin
