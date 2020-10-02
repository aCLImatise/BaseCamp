class: CommandLineTool
id: tinysink.cwl
inputs:
- id: in_user
  doc: to log into the server with. [REQUIRED].
  type: string
  inputBinding:
    prefix: --User
- id: in_server
  doc: to transfer to. [REQUIRED].
  type: string
  inputBinding:
    prefix: --Server
- id: in_displays
  doc: help message. No further functions are performed.
  type: string
  inputBinding:
    prefix: --Displays
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tinysink
