class: CommandLineTool
id: enotify.cwl
inputs:
- id: email
  doc: Contact person's address
  type: boolean
  inputBinding:
    prefix: -email
- id: tool
  doc: Name of script or program
  type: boolean
  inputBinding:
    prefix: -tool
outputs: []
cwlVersion: v1.1
baseCommand:
- enotify
