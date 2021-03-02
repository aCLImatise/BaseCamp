class: CommandLineTool
id: tac.cwl
inputs:
- id: in_before
  doc: attach the separator before instead of after
  type: boolean?
  inputBinding:
    prefix: --before
- id: in_regex
  doc: interpret the separator as a regular expression
  type: boolean?
  inputBinding:
    prefix: --regex
- id: in_separator
  doc: use STRING as the separator instead of newline
  type: string?
  inputBinding:
    prefix: --separator
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tac
