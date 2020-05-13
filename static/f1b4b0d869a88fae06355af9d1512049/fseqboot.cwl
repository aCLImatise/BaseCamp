class: CommandLineTool
id: fseqboot.cwl
inputs:
- id: categories
  doc: properties File of input categories
  type: boolean
  inputBinding:
    prefix: -categories
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
- id: print_data
  doc: boolean    [N] Print out the data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs: []
cwlVersion: v1.1
baseCommand:
- fseqboot
