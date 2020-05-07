class: CommandLineTool
id: augustus.cwl
inputs:
- id: partial
  doc: ': allow prediction of incomplete genes at the sequence boundaries (default)'
  type: string
  inputBinding:
    position: 0
- id: intron_less
  doc: ': only predict single-exon genes like in prokaryotes and some eukaryotes'
  type: long
  inputBinding:
    position: 1
- id: complete
  doc: ': only predict complete genes'
  type: string
  inputBinding:
    position: 2
- id: at_least_one
  doc: ': predict at least one complete gene'
  type: string
  inputBinding:
    position: 3
- id: exactly_one
  doc: ': predict exactly one complete gene'
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- augustus
