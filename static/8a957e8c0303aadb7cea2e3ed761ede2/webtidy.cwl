class: CommandLineTool
id: webtidy.cwl
inputs:
- id: in_context
  doc: '[=n]   Show the offending line (and n surrounding lines)'
  type: boolean?
  inputBinding:
    prefix: --context
- id: in_no_errors
  doc: Ignore errors
  type: boolean?
  inputBinding:
    prefix: --noerrors
- id: in_no_warnings
  doc: Ignore warnings
  type: boolean?
  inputBinding:
    prefix: --nowarnings
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_url
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- webtidy
