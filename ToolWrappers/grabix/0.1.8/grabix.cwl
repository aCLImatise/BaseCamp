class: CommandLineTool
id: grabix.cwl
inputs:
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bg_zf_file
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
- grabix
