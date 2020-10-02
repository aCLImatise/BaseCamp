class: CommandLineTool
id: vcf2wig.pl.cwl
inputs:
- id: in_min_ct
  doc: ": minimum number of CT reads, otherwise, methy column will be '.' (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --minCT
- id: in_input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2wig.pl
