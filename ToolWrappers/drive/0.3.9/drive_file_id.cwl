class: CommandLineTool
id: drive_file_id.cwl
inputs:
- id: in_depth
  doc: maximum recursion depth (default 1)
  type: long?
  inputBinding:
    prefix: -depth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- file-id
