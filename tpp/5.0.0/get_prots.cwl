class: CommandLineTool
id: get_prots.pl.cwl
inputs:
- id: i
  doc: Filter Include String
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: Filter Exclude String
  type: boolean
  inputBinding:
    prefix: -X
- id: d
  doc: Enable debug messages
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- get_prots.pl
