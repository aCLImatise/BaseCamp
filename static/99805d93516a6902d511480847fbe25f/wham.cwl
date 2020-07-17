class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wham.cwl
inputs:
- id: if
  doc: find a bug, please open a report on github!
  type: string
  inputBinding:
    prefix: -If
- id: the
  doc: ', and -p, control the sensitivity and specificity'
  type: string
  inputBinding:
    prefix: -The
outputs: []
cwlVersion: v1.1
baseCommand:
- wham
