class: CommandLineTool
id: drive_md5sum.cwl
inputs:
- id: in_depth
  doc: max traversal depth (default 1)
  type: long?
  inputBinding:
    prefix: -depth
- id: in_id
  doc: stat by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: "recursively discover folders\n"
  type: boolean?
  inputBinding:
    prefix: -recursive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- md5sum
