class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf2bedGraph.pl.cwl
inputs:
- id: sample_order
  doc: ': sample order choose to output as bed file when there are multiple samples
    in the same vcf file. 1 means the first sample (default: 1)'
  type: long
  inputBinding:
    prefix: --sample_order
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
- vcf2bedGraph.pl
