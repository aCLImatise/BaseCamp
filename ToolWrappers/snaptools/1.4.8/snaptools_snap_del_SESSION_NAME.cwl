class: CommandLineTool
id: snaptools_snap_del_SESSION_NAME.cwl
inputs:
- id: in_session_name
  doc: ''
  type: boolean
  inputBinding:
    prefix: --session-name
- id: in_snap_file
  doc: ''
  type: File
  inputBinding:
    prefix: --snap-file
- id: in_snap_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snap_del
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-del
- SESSION_NAME
