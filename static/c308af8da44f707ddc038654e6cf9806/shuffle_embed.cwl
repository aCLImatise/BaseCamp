class: CommandLineTool
id: shuffle_embed.pl.cwl
inputs:
- id: help
  doc: include description
  type: boolean
  inputBinding:
    prefix: --help
- id: insert
  doc: =0 shuffle only, do not insert unshuffled
  type: boolean
  inputBinding:
    prefix: --insert
- id: n
  doc: =1      number of shuffles
  type: boolean
  inputBinding:
    prefix: --n
- id: window
  doc: size of shuffle window
  type: boolean
  inputBinding:
    prefix: --window
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffle_embed.pl
