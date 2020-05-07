class: CommandLineTool
id: huge_split.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: split
  doc: 'Split the bigram file into smaller files. Every  smaller file contains N bigrams.
    N must be an integer. '
  type: string
  inputBinding:
    prefix: --split
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-split.pl
