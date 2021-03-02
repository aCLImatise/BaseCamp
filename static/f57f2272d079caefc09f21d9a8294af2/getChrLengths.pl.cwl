class: CommandLineTool
id: getChrLengths.pl.cwl
inputs:
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getChrLengths.pl
