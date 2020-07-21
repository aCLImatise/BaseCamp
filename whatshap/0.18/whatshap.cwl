class: CommandLineTool
id: ../../../whatshap.cwl
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
