class: CommandLineTool
id: drive_touch.cwl
inputs:
- id: depth
  doc: max traversal depth (default -1)
  type: long
  inputBinding:
    prefix: -depth
- id: duration
  doc: the duration offset from now that each file's modification time should be set
    to e.g -32h
  type: string
  inputBinding:
    prefix: -duration
- id: format
  doc: the custom layout that you'd like your time to be set in, representative of
    the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented
  type: string
  inputBinding:
    prefix: -format
- id: hidden
  doc: allows pushing of hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: share by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: matches
  doc: search by prefix and touch
  type: boolean
  inputBinding:
    prefix: -matches
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: recursive
  doc: toggles recursive touching
  type: boolean
  inputBinding:
    prefix: -recursive
- id: time
  doc: the time each file's modification time should be set to
  type: string
  inputBinding:
    prefix: -time
- id: verbose
  doc: show step by step information verbosely (default true)
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- touch
