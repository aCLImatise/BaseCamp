class: CommandLineTool
id: freq2group.pl.cwl
inputs:
- id: freq
  doc: Bin     Count
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- freq2group.pl
