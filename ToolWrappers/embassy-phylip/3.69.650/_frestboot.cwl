class: CommandLineTool
id: _frestboot.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_test
  doc: "menu       [b] Choose test (Values: b (Bootstrap); j\n(Jackknife); c (Permute\
    \ species for each\ncharacter); o (Permute character order); s\n(Permute within\
    \ species); r (Rewrite data))"
  type: boolean
  inputBinding:
    prefix: -test
- id: in_enzymes
  doc: "boolean    [N] Is the number of enzymes present in\ninput file"
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: in_print_data
  doc: boolean    [N] Print out the data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _frestboot
