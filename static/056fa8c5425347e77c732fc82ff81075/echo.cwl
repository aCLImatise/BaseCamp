class: CommandLineTool
id: echo.cwl
inputs:
- id: n
  doc: not output the trailing newline
  type: string
  inputBinding:
    prefix: -n
- id: e
  doc: enable interpretation of backslash escapes
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: disable interpretation of backslash escapes (default)
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- echo
