class: CommandLineTool
id: huge_split.pl.cwl
inputs:
- id: in_split
  doc: "Split the bigram file into smaller files. Every\nsmaller file contains N bigrams.\
    \ N must be an integer."
  type: long
  inputBinding:
    prefix: --split
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- huge-split.pl
