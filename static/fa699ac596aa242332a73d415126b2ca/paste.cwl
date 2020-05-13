class: CommandLineTool
id: paste.cwl
inputs:
- id: delimiters
  doc: reuse characters from LIST instead of TABs
  type: string
  inputBinding:
    prefix: --delimiters
- id: serial
  doc: one file at a time instead of in parallel
  type: string
  inputBinding:
    prefix: --serial
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- paste
