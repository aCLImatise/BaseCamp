class: CommandLineTool
id: tac.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- tac
