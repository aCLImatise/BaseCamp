class: CommandLineTool
id: qualfa2fq.pl_in.qual.cwl
inputs:
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_qual
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qualfa2fq.pl
- in.qual
