class: CommandLineTool
id: tally.cwl
inputs:
- id: cmp
  doc: with cmp paired end identifier mismatches will be reported
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tally
