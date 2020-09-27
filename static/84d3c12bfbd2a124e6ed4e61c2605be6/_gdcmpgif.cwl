class: CommandLineTool
id: _gdcmpgif.cwl
inputs:
- id: in_gdc_mpg_if
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename_do_tgif
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _gdcmpgif
