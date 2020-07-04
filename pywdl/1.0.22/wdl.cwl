class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wdl.cwl
inputs:
- id: debug
  doc: Open the floodgates
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_color
  doc: Don't colorize output
  type: boolean
  inputBinding:
    prefix: --no-color
outputs: []
cwlVersion: v1.1
baseCommand:
- wdl
