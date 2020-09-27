class: CommandLineTool
id: fqfilt.pl.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_min_len
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fqfilt.pl
