class: CommandLineTool
id: _fcontml.cwl
inputs:
- id: in_datatype
  doc: "menu       [g] Input type in infile (Values: g (Gene\nfrequencies); i (Continuous\
    \ characters))"
  type: boolean?
  inputBinding:
    prefix: -datatype
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _fcontml
