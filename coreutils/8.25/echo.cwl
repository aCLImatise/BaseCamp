class: CommandLineTool
id: ../../../echo.cwl
inputs:
- id: output_trailing_newline
  doc: not output the trailing newline
  type: string
  inputBinding:
    prefix: -n
- id: enable_interpretation_backslash
  doc: enable interpretation of backslash escapes
  type: boolean
  inputBinding:
    prefix: -e
- id: disable_interpretation_backslash
  doc: disable interpretation of backslash escapes (default)
  type: boolean
  inputBinding:
    prefix: -E
- id: short_option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- echo
