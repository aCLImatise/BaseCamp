class: CommandLineTool
id: chakin_util_dbshell.cwl
inputs:
- id: in_none
  doc: 'Options:'
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
- chakin
- util
- dbshell
