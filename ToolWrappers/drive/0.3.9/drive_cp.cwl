class: CommandLineTool
id: drive_cp.cwl
inputs:
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: "recursive copying\n"
  type: boolean?
  inputBinding:
    prefix: -recursive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- cp
