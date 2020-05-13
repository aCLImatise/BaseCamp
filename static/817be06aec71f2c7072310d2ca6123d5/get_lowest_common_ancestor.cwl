class: CommandLineTool
id: get_lowest_common_ancestor.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: term 1 ID
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: term 2 ID
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- get_lowest_common_ancestor.pl
