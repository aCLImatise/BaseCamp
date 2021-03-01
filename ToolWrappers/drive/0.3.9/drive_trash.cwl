class: CommandLineTool
id: drive_trash.cwl
inputs:
- id: in_id
  doc: trash by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_matches
  doc: search by prefix and trash
  type: boolean?
  inputBinding:
    prefix: -matches
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_verbose
  doc: "show step by step information verbosely\n"
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
- trash
