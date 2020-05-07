class: CommandLineTool
id: cut.cwl
inputs:
- id: n
  doc: N'th byte, character or field, counted from 1
  type: string
  inputBinding:
    position: 0
- id: n
  doc: from N'th byte, character or field, to end of line
  type: string
  inputBinding:
    position: 1
- id: n_m
  doc: from N'th to M'th (included) byte, character or field
  type: string
  inputBinding:
    position: 2
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: m
  doc: from first to M'th (included) byte, character or field
  type: boolean
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- cut
