class: CommandLineTool
id: ../../../drive_cp.cwl
inputs:
- id: in_id
  doc: copy by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: "recursive copying\n"
  type: boolean
  inputBinding:
    prefix: -recursive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- cp
