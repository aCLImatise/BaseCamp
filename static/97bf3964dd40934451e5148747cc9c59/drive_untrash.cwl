class: CommandLineTool
id: drive_untrash.cwl
inputs:
- id: hidden
  doc: allows untrashing hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: untrash by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: matches
  doc: search by prefix and untrash
  type: boolean
  inputBinding:
    prefix: -matches
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- untrash
