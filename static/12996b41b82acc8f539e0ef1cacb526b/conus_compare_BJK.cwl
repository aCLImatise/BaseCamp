class: CommandLineTool
id: conus_compare_BJK.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_conus_compare
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_test_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- conus_compare
- BJK
