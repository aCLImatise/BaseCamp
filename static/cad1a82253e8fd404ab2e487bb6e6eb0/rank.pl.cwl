class: CommandLineTool
id: rank.pl.cwl
inputs:
- id: in_precision
  doc: Rounds coefficient to N places (default = 4)
  type: long?
  inputBinding:
    prefix: --precision
- id: in_returns_count_ngrams
  doc: Returns count of ngrams in common between files
  type: boolean?
  inputBinding:
    prefix: --N
- id: in_source_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_source_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rank.pl
