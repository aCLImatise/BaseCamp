class: CommandLineTool
id: error_corrected2frg.cwl
inputs:
- id: in_length_min
  doc: Minimum length of a read (64)
  type: long?
  inputBinding:
    prefix: --length-min
- id: in_lib_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- error_corrected2frg
