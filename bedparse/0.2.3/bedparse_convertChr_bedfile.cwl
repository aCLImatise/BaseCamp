class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedparse_convertChr_bedfile.cwl
inputs:
- id: assembly
  doc: ''
  type: string
  inputBinding:
    prefix: --assembly
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: convert_chr
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- convertChr
- bedfile
