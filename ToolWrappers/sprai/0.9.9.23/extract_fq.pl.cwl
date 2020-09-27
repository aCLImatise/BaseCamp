class: CommandLineTool
id: extract_fq.pl.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_all_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_exclude_dot_list
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
- extract_fq.pl
