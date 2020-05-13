class: CommandLineTool
id: drive_trash.cwl
inputs:
- id: hidden
  doc: allows trashing hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: trash by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: matches
  doc: search by prefix and trash
  type: boolean
  inputBinding:
    prefix: -matches
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: verbose
  doc: show step by step information verbosely
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- trash
