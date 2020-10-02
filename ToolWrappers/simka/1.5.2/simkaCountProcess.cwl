class: CommandLineTool
id: simkaCountProcess.cwl
inputs:
- id: in_nohup
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simkaCountProcess
