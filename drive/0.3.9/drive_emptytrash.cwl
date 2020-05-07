class: CommandLineTool
id: drive_emptytrash.cwl
inputs:
- id: no_prompt
  doc: shows no prompt before emptying the trash
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
- emptytrash
