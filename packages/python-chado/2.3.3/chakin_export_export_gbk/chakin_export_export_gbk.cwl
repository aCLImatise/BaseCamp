class: CommandLineTool
id: chakin_export_export_gbk.cwl
inputs:
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- export
- export_gbk
