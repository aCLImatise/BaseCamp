class: CommandLineTool
id: drive_stat.cwl
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
- id: md5sum
  doc: produce output compatible with md5sum(1)
  type: boolean
  inputBinding:
    prefix: -md5sum
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
- stat
