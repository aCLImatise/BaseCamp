class: CommandLineTool
id: ../../../drive_file_id.cwl
inputs:
- id: in_depth
  doc: maximum recursion depth (default 1)
  type: long
  inputBinding:
    prefix: -depth
- id: in_hidden
  doc: "allows operation on hidden paths (default true)\n"
  type: boolean
  inputBinding:
    prefix: -hidden
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- file-id
