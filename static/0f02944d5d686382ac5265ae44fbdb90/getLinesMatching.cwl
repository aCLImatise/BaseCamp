class: CommandLineTool
id: ../../../getLinesMatching.pl.cwl
inputs:
- id: whitespace
  doc: Split columns at whitespace rather than tab.
  type: boolean
  inputBinding:
    prefix: --whitespace
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getLinesMatching.pl
