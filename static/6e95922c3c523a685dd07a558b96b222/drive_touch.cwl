class: CommandLineTool
id: drive_touch.cwl
inputs:
- id: in_depth
  doc: max traversal depth (default -1)
  type: long?
  inputBinding:
    prefix: -depth
- id: in_duration
  doc: the duration offset from now that each file's modification time should be set
    to e.g -32h
  type: File?
  inputBinding:
    prefix: -duration
- id: in_format
  doc: the custom layout that you'd like your time to be set in, representative of
    the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented
  type: long?
  inputBinding:
    prefix: -format
- id: in_id
  doc: share by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_matches
  doc: search by prefix and touch
  type: boolean?
  inputBinding:
    prefix: -matches
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: toggles recursive touching
  type: boolean?
  inputBinding:
    prefix: -recursive
- id: in_time
  doc: the time each file's modification time should be set to
  type: File?
  inputBinding:
    prefix: -time
- id: in_verbose
  doc: "show step by step information verbosely (default true)\n"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- touch
