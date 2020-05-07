class: CommandLineTool
id: vcf2wig.pl.cwl
inputs:
- id: min_ct
  doc: ": minimum number of CT reads, otherwise, methy column will be '.' (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --minCT
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2wig.pl
