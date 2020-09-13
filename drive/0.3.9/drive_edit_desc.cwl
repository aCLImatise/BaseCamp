class: CommandLineTool
id: ../../../drive_edit_desc.cwl
inputs:
- id: in_description
  doc: set the description
  type: string
  inputBinding:
    prefix: -description
- id: in_id
  doc: open by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: in_piped
  doc: "get content in from standard input (stdin)\n"
  type: boolean
  inputBinding:
    prefix: -piped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- edit-desc
