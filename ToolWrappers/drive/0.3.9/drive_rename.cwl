class: CommandLineTool
id: drive_rename.cwl
inputs:
- id: in_force
  doc: coerce rename even if remote already exists
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_local
  doc: rename local as well (default true)
  type: boolean?
  inputBinding:
    prefix: -local
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_remote
  doc: "rename remote as well (default true)\n"
  type: boolean?
  inputBinding:
    prefix: -remote
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- rename
