class: CommandLineTool
id: getLinesMatching.pl.cwl
inputs:
- id: whitespace
  doc: Split columns at whitespace rather than tab.
  type: boolean
  inputBinding:
    prefix: --whitespace
outputs: []
cwlVersion: v1.1
baseCommand:
- getLinesMatching.pl
