class: CommandLineTool
id: touch.cwl
inputs:
- id: a
  doc: change only the access time
  type: boolean
  inputBinding:
    prefix: -a
- id: no_create
  doc: do not create any files
  type: boolean
  inputBinding:
    prefix: --no-create
- id: date
  doc: parse STRING and use it instead of current time
  type: string
  inputBinding:
    prefix: --date
- id: f
  doc: (ignored)
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: change only the modification time
  type: boolean
  inputBinding:
    prefix: -m
- id: reference
  doc: use this file's times instead of current time
  type: File
  inputBinding:
    prefix: --reference
- id: t
  doc: use [[CC]YY]MMDDhhmm[.ss] instead of current time
  type: string
  inputBinding:
    prefix: -t
- id: time
  doc: 'change the specified time: WORD is access, atime, or use: equivalent to -a
    WORD is modify or mtime: equivalent to -m'
  type: string
  inputBinding:
    prefix: --time
outputs: []
cwlVersion: v1.1
baseCommand:
- touch
