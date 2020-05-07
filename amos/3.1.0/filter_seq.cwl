class: CommandLineTool
id: filter_seq.cwl
inputs:
- id: index
  doc: an index file of the copy file
  type: string
  inputBinding:
    prefix: -index
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_seq
