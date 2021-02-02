class: CommandLineTool
id: randomSplit.pl.cwl
inputs:
- id: in_dbfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomSplit.pl
