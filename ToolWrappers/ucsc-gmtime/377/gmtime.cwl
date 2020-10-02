class: CommandLineTool
id: gmtime.cwl
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
cwlVersion: v1.1
baseCommand:
- gmtime
