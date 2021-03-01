class: CommandLineTool
id: makblk.pl.cwl
inputs:
- id: in_use_reduced_alphabet
  doc: ':     use reduced alphabet'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_x_dot_dot_dot
  doc: transferred to spaln
  type: boolean?
  inputBinding:
    prefix: -X...
- id: in_xcc
  doc: ':   c=0: conti seed; c=1: spaced seed; c>1: conti + (c-1) spaced seeds'
  type: boolean?
  inputBinding:
    prefix: -XCc
- id: in_k
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_wx_dot
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Wx.
- id: in_bkn_vertical_line_bkp_vertical_line_bka
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_d_vertical_line_p_vertical_lines
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_x_dot_grp
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
- makblk.pl
