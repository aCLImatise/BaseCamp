class: CommandLineTool
id: drive_pub.cwl
inputs:
- id: hidden
  doc: allows publishing of hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: publish by id instead of path
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
- pub
