class: CommandLineTool
id: wham.cwl
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
- id: if
  doc: 'have exome data use the -e option for best performance     '
  type: string
  inputBinding:
    prefix: -If
outputs: []
cwlVersion: v1.1
baseCommand:
- wham
