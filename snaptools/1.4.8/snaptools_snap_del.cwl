class: CommandLineTool
id: snaptools_snap_del.cwl
inputs:
- id: snap_file
  doc: 'snap file. (default: None)'
  type: string
  inputBinding:
    prefix: --snap-file
- id: session_name
  doc: "session to be deleted in snap file. 'AM': cell-by-bin matrix. All cell-by-bin\
    \ matrices will be removed. 'PM': cell-by-peak matrix. 'GM': cell-by-gene matrix.\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --session-name
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-del
