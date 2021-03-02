class: CommandLineTool
id: localtime.cwl
inputs:
- id: in_time_stamp
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
- localtime
