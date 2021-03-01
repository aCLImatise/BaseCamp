class: CommandLineTool
id: drive_clashes.cwl
inputs:
- id: in_depth
  doc: maximum recursion depth (default -1)
  type: long?
  inputBinding:
    prefix: -depth
- id: in_fix
  doc: fix clashes by renaming or trashing files
  type: boolean?
  inputBinding:
    prefix: -fix
- id: in_fix_mode
  doc: set fix policy to rename or trash (default "rename")
  type: string?
  inputBinding:
    prefix: -fix-mode
- id: in_id
  doc: operate on clashes by id instead of by path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_list
  doc: list clashes (default true)
  type: boolean?
  inputBinding:
    prefix: -list
- id: in_no_prompt
  doc: "shows no prompt before fixing clashes\n"
  type: boolean?
  inputBinding:
    prefix: -no-prompt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- clashes
