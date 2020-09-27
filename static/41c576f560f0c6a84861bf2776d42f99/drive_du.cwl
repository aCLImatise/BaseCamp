class: CommandLineTool
id: drive_du.cwl
inputs:
- id: in_depth
  doc: maximum recursion depth (default 1)
  type: long
  inputBinding:
    prefix: -depth
- id: in_directories
  doc: list all directories
  type: boolean
  inputBinding:
    prefix: -directories
- id: in_exact_owner
  doc: elements with the exact owner
  type: string
  inputBinding:
    prefix: -exact-owner
- id: in_exact_title
  doc: get elements with the exact titles
  type: string
  inputBinding:
    prefix: -exact-title
- id: in_files
  doc: list only files
  type: boolean
  inputBinding:
    prefix: -files
- id: in_trashed
  doc: list content in the trash
  type: boolean
  inputBinding:
    prefix: -trashed
- id: in_version
  doc: "show the number of times that the file has been modified on\nthe server even\
    \ with changes not visible to the user\n"
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- du
