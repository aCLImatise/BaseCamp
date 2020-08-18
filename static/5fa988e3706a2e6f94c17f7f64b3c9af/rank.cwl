class: CommandLineTool
id: ../../../rank.pl.cwl
inputs:
- id: precision
  doc: Rounds coefficient to N places (default = 4)
  type: string
  inputBinding:
    prefix: --precision
- id: returns_count_ngrams
  doc: Returns count of ngrams in common between files
  type: boolean
  inputBinding:
    prefix: --N
- id: source_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rank.pl
