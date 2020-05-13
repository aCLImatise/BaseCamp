class: CommandLineTool
id: drive_qr.cwl
inputs:
- id: id
  doc: share by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: verbose
  doc: show step by step information verbosely (default true)
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- qr
