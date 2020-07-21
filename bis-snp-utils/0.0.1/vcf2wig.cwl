class: CommandLineTool
id: ../../../vcf2wig.pl.cwl
inputs:
- id: min_ct
  doc: ": minimum number of CT reads, otherwise, methy column will be '.' (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --minCT
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2wig.pl
