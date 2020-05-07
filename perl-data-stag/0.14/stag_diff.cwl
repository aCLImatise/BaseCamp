class: CommandLineTool
id: stag_diff.pl.cwl
inputs:
- id: i
  doc: /bar/bar-id
  type: string
  inputBinding:
    prefix: -i
- id: parser
  doc: '|p FORMAT'
  type: boolean
  inputBinding:
    prefix: -parser
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-diff.pl
