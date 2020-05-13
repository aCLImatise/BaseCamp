class: CommandLineTool
id: _frestboot.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: test
  doc: 'menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute
    species for each character); o (Permute character order); s (Permute within species);
    r (Rewrite data))'
  type: boolean
  inputBinding:
    prefix: -test
- id: enzymes
  doc: boolean    [N] Is the number of enzymes present in input file
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: print_data
  doc: boolean    [N] Print out the data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs: []
cwlVersion: v1.1
baseCommand:
- _frestboot
