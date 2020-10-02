class: CommandLineTool
id: conus_fold_UNA.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_conus_fold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- conus_fold
- UNA
