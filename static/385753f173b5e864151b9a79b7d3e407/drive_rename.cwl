class: CommandLineTool
id: drive_rename.cwl
inputs:
- id: id
  doc: unshare by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: local
  doc: rename local as well (default true)
  type: boolean
  inputBinding:
    prefix: -local
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: remote
  doc: rename remote as well (default true)
  type: boolean
  inputBinding:
    prefix: -remote
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- rename
