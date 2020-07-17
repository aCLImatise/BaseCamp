class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vispr.cwl
inputs:
- id: debug
  doc: Print debug info.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- vispr
