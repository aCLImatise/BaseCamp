class: CommandLineTool
id: ../../../sqt_randomseq.cwl
inputs:
- id: in_minimum_length
  doc: ''
  type: long
  inputBinding:
    prefix: --minimum-length
- id: in_maximum_length
  doc: ''
  type: long
  inputBinding:
    prefix: --maximum-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sqt
- randomseq
