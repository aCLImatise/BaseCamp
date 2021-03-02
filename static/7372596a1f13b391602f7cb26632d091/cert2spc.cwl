class: CommandLineTool
id: cert2spc.cwl
inputs:
- id: in_certificate_vertical_line_crl
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cert2spc
