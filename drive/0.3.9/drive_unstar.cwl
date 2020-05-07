class: CommandLineTool
id: drive_unstar.cwl
inputs:
- id: id
  doc: open by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: no_prompt
  doc: disables the prompt
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- unstar
