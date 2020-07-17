class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_seqconvert.pl.cwl
inputs:
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
- id: file_dot_in_format
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_dot_out_format
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqconvert.pl
