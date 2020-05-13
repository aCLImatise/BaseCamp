class: CommandLineTool
id: drive_md5sum.cwl
inputs:
- id: hidden
  doc: discover hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: stat by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: recursive
  doc: recursively discover folders
  type: boolean
  inputBinding:
    prefix: -recursive
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- md5sum
