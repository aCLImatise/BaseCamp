class: CommandLineTool
id: echo.cwl
inputs:
- id: in_output_trailing_newline
  doc: do not output the trailing newline
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_enable_interpretation_backslash
  doc: enable interpretation of backslash escapes
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_disable_interpretation_backslash
  doc: disable interpretation of backslash escapes (default)
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_short_option
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- echo
