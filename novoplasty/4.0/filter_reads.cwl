class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_reads.pl.cwl
inputs:
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: -ref
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: -out
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_reads.pl
