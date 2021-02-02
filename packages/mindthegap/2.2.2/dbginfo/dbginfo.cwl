class: CommandLineTool
id: dbginfo.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    graph file'
  type: boolean
  inputBinding:
    prefix: -in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dbginfo
