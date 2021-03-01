class: CommandLineTool
id: h5import_GZIP.cwl
inputs:
- id: in_h_five_import
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_elp
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
- h5import
- GZIP
