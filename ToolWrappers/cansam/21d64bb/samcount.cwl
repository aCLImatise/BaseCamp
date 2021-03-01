class: CommandLineTool
id: samcount.cwl
inputs:
- id: in_display_statistics_library
  doc: Display statistics for each library
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_display_statistics_read
  doc: Display statistics for each read group (by default, displays both)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_lr
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -lr
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samcount
