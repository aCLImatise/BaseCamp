class: CommandLineTool
id: rank.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_file_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: source_file_2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: precision
  doc: Rounds coefficient to N places (default = 4)
  type: string
  inputBinding:
    prefix: --precision
- id: n
  doc: Returns count of ngrams in common between files
  type: boolean
  inputBinding:
    prefix: --N
outputs: []
cwlVersion: v1.1
baseCommand:
- rank.pl
