class: CommandLineTool
id: scf_info.cwl
inputs:
- id: in_scf_filename
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
- scf_info
