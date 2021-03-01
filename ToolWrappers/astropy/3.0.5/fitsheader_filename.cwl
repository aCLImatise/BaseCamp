class: CommandLineTool
id: fitsheader_filename.cwl
inputs:
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_k
  doc: ''
  type: string?
  inputBinding:
    prefix: -k
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_fits_header
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_format
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
- fitsheader
- filename
