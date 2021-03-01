class: CommandLineTool
id: ranksum_test.cwl
inputs:
- id: in_p_value
  doc: "|0|1|2|3 (-1=left, 0=one-tailed,1=right,\n2=two-tailed, 3=all (default))"
  type: boolean?
  inputBinding:
    prefix: --p-value
- id: in_verbosity
  doc: '|2|3|4 (default = 2)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_p
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_r
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ranksum_test
