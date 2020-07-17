class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/unitas.pl.cwl
inputs:
- id: refseq
  doc: '[-refseq sequence_2.fas ...]'
  type: string
  inputBinding:
    prefix: -refseq
outputs: []
cwlVersion: v1.1
baseCommand:
- unitas.pl
