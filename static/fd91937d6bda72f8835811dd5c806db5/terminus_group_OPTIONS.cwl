class: CommandLineTool
id: terminus_group_OPTIONS.cwl
inputs:
- id: dir
  doc: ''
  type: string
  inputBinding:
    prefix: --dir
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- terminus
- group
- OPTIONS
