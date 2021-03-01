class: CommandLineTool
id: proda.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_tran
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -tran
- id: in_posterior
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -posterior
- id: in_silent
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_l
  doc: ''
  type: long?
  inputBinding:
    prefix: -L
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- proda
