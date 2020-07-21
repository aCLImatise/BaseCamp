class: CommandLineTool
id: ../../../sixgill_filter_metapeptidefile.cwl
inputs:
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: minor_f_length
  doc: ''
  type: long
  inputBinding:
    prefix: --minorflength
- id: six_gill_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_filter
- metapeptidefile
