class: CommandLineTool
id: wham.cwl
inputs:
- id: in_if
  doc: find a bug, please open a report on github!
  type: string?
  inputBinding:
    prefix: -If
- id: in_the
  doc: ', and -p, control the sensitivity and specificity'
  type: string?
  inputBinding:
    prefix: -The
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wham
