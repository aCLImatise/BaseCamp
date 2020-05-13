class: CommandLineTool
id: fix_sqn_date.cwl
inputs:
- id: sqn
  doc: Input SQN file to change date
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fix-sqn-date
