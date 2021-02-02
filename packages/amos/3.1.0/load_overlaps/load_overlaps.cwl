class: CommandLineTool
id: load_overlaps.cwl
inputs:
- id: in_set_path_populate
  doc: Set path of the AMOS bank to populate
  type: File
  inputBinding:
    prefix: -b
- id: in_set_minimum_default
  doc: Set the minimum alignment identity, default 90
  type: double
  inputBinding:
    prefix: -i
- id: in_set_maximum_populate
  doc: "Set maximum ignorable trim length, default 20\nPopulate overlap store based\
    \ on the all vs. all alignment"
  type: long
  inputBinding:
    prefix: -t
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- load-overlaps
