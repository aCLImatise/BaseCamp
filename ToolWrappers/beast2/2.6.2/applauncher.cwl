class: CommandLineTool
id: applauncher.cwl
inputs:
- id: in_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: -list
- id: in_app_launcher
  doc: applauncher -help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- applauncher
