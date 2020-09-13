class: CommandLineTool
id: ../../../snaptools_snap_del.cwl
inputs:
- id: in_snap_file
  doc: 'snap file. (default: None)'
  type: File
  inputBinding:
    prefix: --snap-file
- id: in_session_name
  doc: "session to be deleted in snap file. 'AM': cell-by-bin\nmatrix. All cell-by-bin\
    \ matrices will be removed.\n'PM': cell-by-peak matrix. 'GM': cell-by-gene matrix.\n\
    (default: None)\n"
  type: File
  inputBinding:
    prefix: --session-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-del
