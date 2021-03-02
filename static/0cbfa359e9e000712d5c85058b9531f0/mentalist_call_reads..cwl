class: CommandLineTool
id: mentalist_call_reads..cwl
inputs:
- id: in_kt
  doc: ''
  type: string?
  inputBinding:
    prefix: --kt
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: --db
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_mentalist
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_call
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
- mentalist
- call
- reads.
