class: CommandLineTool
id: ../../../drive_del.cwl
inputs:
- id: in_hidden
  doc: allows trashing hidden paths
  type: boolean
  inputBinding:
    prefix: -hidden
- id: in_id
  doc: delete by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: in_matches
  doc: search by prefix and delete
  type: boolean
  inputBinding:
    prefix: -matches
- id: in_no_prompt
  doc: disables the prompt
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: in_quiet
  doc: "if set, do not log anything but errors\n"
  type: boolean
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- del
