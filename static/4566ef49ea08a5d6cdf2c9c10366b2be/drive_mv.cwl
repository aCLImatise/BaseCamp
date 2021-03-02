class: CommandLineTool
id: drive_mv.cwl
inputs:
- id: in_keep_parent
  doc: ensures that when moving a file into a destination, that we also retain its
    original parent so that it will exist in more than one folder
  type: boolean?
  inputBinding:
    prefix: -keep-parent
- id: in_quiet
  doc: "if set, do not log anything but errors\n"
  type: boolean?
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- mv
