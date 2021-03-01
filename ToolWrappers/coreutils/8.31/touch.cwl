class: CommandLineTool
id: touch.cwl
inputs:
- id: in_change_only_access_time
  doc: change only the access time
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_no_create
  doc: do not create any files
  type: boolean?
  inputBinding:
    prefix: --no-create
- id: in_date
  doc: parse STRING and use it instead of current time
  type: string?
  inputBinding:
    prefix: --date
- id: in_ignored
  doc: (ignored)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_change_only_modification_time
  doc: change only the modification time
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_reference
  doc: use this file's times instead of current time
  type: File?
  inputBinding:
    prefix: --reference
- id: in_use_current_time
  doc: use [[CC]YY]MMDDhhmm[.ss] instead of current time
  type: string?
  inputBinding:
    prefix: -t
- id: in_time
  doc: "change the specified time:\nWORD is access, atime, or use: equivalent to -a\n\
    WORD is modify or mtime: equivalent to -m"
  type: string?
  inputBinding:
    prefix: --time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- touch
