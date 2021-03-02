class: CommandLineTool
id: filter_reads.pl.cwl
inputs:
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: -ref
- id: in_two
  doc: ''
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long?
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_reads.pl
