class: CommandLineTool
id: mdoc_validate.cwl
inputs:
- id: in_format
  doc: "The documentation FORMAT used within PATHS.  Valid\nformats include:\necma\n\
    If no format provided, `ecma' is used."
  type: string?
  inputBinding:
    prefix: --format
- id: in_mdoc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_validate
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mdoc-validate
