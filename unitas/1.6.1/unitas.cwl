class: CommandLineTool
id: unitas.pl.cwl
inputs:
- id: xxx
  doc: .oXXXXXXXX. .XXXXo
  type: string
  inputBinding:
    position: 0
- id: refseq
  doc: '[-refseq sequence_2.fas ...]'
  type: string
  inputBinding:
    prefix: -refseq
outputs: []
cwlVersion: v1.1
baseCommand:
- unitas.pl
