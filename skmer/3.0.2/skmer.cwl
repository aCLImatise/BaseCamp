class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/skmer.cwl
inputs:
- id: debug
  doc: Print the traceback when an exception is raised
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- skmer
