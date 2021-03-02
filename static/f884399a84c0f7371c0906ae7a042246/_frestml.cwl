class: CommandLineTool
id: _frestml.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_n_jumble
  doc: "integer    [0] Number of times to randomise (Integer 0\nor more)"
  type: boolean?
  inputBinding:
    prefix: -njumble
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_site_length
  doc: integer    [6] Site length (Integer from 1 to 8)
  type: boolean?
  inputBinding:
    prefix: -sitelength
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
- _frestml
