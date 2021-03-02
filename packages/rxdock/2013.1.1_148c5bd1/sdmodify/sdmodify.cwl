class: CommandLineTool
id: sdmodify.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_data_field
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sd_files
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sdmodify
