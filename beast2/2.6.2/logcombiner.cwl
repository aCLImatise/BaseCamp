class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/logcombiner.cwl
inputs:
- id: log
  doc: ''
  type: File
  inputBinding:
    prefix: -log
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- logcombiner
