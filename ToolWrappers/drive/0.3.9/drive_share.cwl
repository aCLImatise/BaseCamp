class: CommandLineTool
id: drive_share.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- share
