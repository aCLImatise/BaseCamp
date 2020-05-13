class: CommandLineTool
id: samcount.cwl
inputs:
- id: l
  doc: Display statistics for each library
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: Display statistics for each read group (by default, displays both)
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- samcount
