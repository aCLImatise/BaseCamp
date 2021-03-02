class: CommandLineTool
id: nebulizer_delete_user.cwl
inputs:
- id: in_purge
  doc: also purge (permanently delete) the user.
  type: boolean?
  inputBinding:
    prefix: --purge
- id: in_yes
  doc: don't ask for confirmation of deletions.
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_email
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- delete_user
