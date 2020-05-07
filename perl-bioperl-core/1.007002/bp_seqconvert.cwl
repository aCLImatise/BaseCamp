class: CommandLineTool
id: bp_seqconvert.pl.cwl
inputs:
- id: file_in_format
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_out_format
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: from
  doc: ''
  type: string
  inputBinding:
    prefix: --from
- id: to
  doc: ''
  type: string
  inputBinding:
    prefix: --to
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqconvert.pl
