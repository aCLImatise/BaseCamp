class: CommandLineTool
id: dbginfo.cwl
inputs:
- id: in
  doc: '(1 arg) :    graph file'
  type: boolean
  inputBinding:
    prefix: -in
outputs: []
cwlVersion: v1.1
baseCommand:
- dbginfo
