class: CommandLineTool
id: paste.cwl
inputs:
- id: in_delimiters
  doc: reuse characters from LIST instead of TABs
  type: string?
  inputBinding:
    prefix: --delimiters
- id: in_serial
  doc: paste one file at a time instead of in parallel
  type: boolean?
  inputBinding:
    prefix: --serial
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paste
