class: CommandLineTool
id: qvalue.cwl
inputs:
- id: in_good_score
  doc: '|low'
  type: File?
  inputBinding:
    prefix: --good-score
- id: in_header
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --header
- id: in_column
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --column
- id: in_append
  doc: (default from clock)
  type: long?
  inputBinding:
    prefix: --append
- id: in_verbosity
  doc: '|2|3|4 (default = 2)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_p_values
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- qvalue
