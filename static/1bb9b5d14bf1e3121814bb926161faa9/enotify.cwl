class: CommandLineTool
id: enotify.cwl
inputs:
- id: in_email
  doc: Contact person's address
  type: boolean?
  inputBinding:
    prefix: -email
- id: in_tool
  doc: Name of script or program
  type: boolean?
  inputBinding:
    prefix: -tool
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- enotify
