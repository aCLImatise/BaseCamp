class: CommandLineTool
id: drive_md5sum.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- md5sum
