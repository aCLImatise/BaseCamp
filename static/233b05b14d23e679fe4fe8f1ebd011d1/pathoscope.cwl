class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pathoscope.cwl
inputs:
- id: verbose
  doc: Prints verbose text while running
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
