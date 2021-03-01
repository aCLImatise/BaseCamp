class: CommandLineTool
id: last_postmask.cwl
inputs:
- id: in_in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- last-postmask
