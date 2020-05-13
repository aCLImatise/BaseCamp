class: CommandLineTool
id: merfishtools_gen_mhd2_OPTIONS.cwl
inputs:
- id: bits
  doc: ''
  type: long
  inputBinding:
    prefix: --bits
- id: one_bits
  doc: ''
  type: long
  inputBinding:
    prefix: --onebits
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- gen-mhd2
- OPTIONS
