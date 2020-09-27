class: CommandLineTool
id: adjustScanRankerScoreByGroup.cwl
inputs:
- id: in_group_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- adjustScanRankerScoreByGroup
