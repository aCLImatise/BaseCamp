class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tac.cwl
inputs:
- id: before
  doc: the separator before instead of after
  type: string
  inputBinding:
    prefix: --before
- id: regex
  doc: the separator as a regular expression
  type: long
  inputBinding:
    prefix: --regex
- id: separator
  doc: use STRING as the separator instead of newline
  type: string
  inputBinding:
    prefix: --separator
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tac
