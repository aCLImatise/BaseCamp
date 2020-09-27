class: CommandLineTool
id: drive_touch.cwl
inputs:
- id: in_depth
  doc: max traversal depth (default -1)
  type: long
  inputBinding:
    prefix: -depth
- id: in_duration
  doc: the duration offset from now that each file's modification time should be set
    to e.g -32h
  type: File
  inputBinding:
    prefix: -duration
- id: in_format
  doc: the custom layout that you'd like your time to be set in, representative of
    the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented
  type: long
  inputBinding:
    prefix: -format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- touch
