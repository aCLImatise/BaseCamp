class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samcount.cwl
inputs:
- id: display_statistics_library
  doc: Display statistics for each library
  type: boolean
  inputBinding:
    prefix: -l
- id: display_statistics_read
  doc: Display statistics for each read group (by default, displays both)
  type: boolean
  inputBinding:
    prefix: -r
- id: lr
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lr
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samcount
