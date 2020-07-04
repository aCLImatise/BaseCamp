class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/whatshap.cwl
inputs:
- id: debug
  doc: Print debug messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
