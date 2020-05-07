class: CommandLineTool
id: drive_mv.cwl
inputs:
- id: id
  doc: move by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: keep_parent
  doc: ensures that when moving a file into a destination, that we also retain its
    original parent so that it will exist in more than one folder
  type: boolean
  inputBinding:
    prefix: -keep-parent
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- mv
