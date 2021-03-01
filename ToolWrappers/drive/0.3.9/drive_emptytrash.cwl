class: CommandLineTool
id: drive_emptytrash.cwl
inputs:
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
- emptytrash
