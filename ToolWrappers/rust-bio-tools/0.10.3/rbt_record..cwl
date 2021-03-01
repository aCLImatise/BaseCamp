class: CommandLineTool
id: rbt_record..cwl
inputs:
- id: in_rbt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- record.
