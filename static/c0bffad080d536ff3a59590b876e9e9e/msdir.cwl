class: CommandLineTool
id: msdir.cwl
inputs:
- id: type
  doc: "Size      Last Modified   Name\rNo MS sources found.                     \
    \                      "
  type: string
  inputBinding:
    position: 0
- id: b
  doc: '[ --brief ]        : display brief listing [default]'
  type: boolean
  inputBinding:
    prefix: -b
- id: d
  doc: '[ --detailed ]     : display detailed listing (tabular)'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: '[ --full ]         : display all source-level metadata'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- msdir
