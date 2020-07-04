class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fq2fa.pl.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fq2fa.pl
