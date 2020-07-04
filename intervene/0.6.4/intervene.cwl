class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/intervene.cwl
inputs:
- id: cite
  doc: show citation information and exit
  type: boolean
  inputBinding:
    prefix: --cite
outputs: []
cwlVersion: v1.1
baseCommand:
- intervene
