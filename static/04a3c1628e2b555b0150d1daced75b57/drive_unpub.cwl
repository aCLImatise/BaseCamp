class: CommandLineTool
id: drive_unpub.cwl
inputs:
- id: hidden
  doc: allows pulling of hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: unpublish by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- unpub
