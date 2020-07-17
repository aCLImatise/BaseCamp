class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/shuffle_embed.pl.cwl
inputs:
- id: help
  doc: include description
  type: boolean
  inputBinding:
    prefix: --help
- id: insert
  doc: shuffle only, do not insert unshuffled
  type: string
  inputBinding:
    prefix: --insert
- id: number_of_shuffles
  doc: number of shuffles
  type: string
  inputBinding:
    prefix: --n
- id: window
  doc: size of shuffle window
  type: boolean
  inputBinding:
    prefix: --window
- id: file_dot_seq
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffle_embed.pl
