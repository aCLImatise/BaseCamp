class: CommandLineTool
id: pdf2ps.cwl
inputs:
- id: in_d_ascii_eight_five_encode_pages
  doc: ''
  type: long
  inputBinding:
    prefix: -dASCII85EncodePages
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pdf2ps
