class: CommandLineTool
id: sqt_randomseq.cwl
inputs:
- id: in_minimum_length
  doc: ''
  type: long?
  inputBinding:
    prefix: --minimum-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqt
- randomseq
