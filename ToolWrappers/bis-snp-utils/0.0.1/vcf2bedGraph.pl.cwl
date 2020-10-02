class: CommandLineTool
id: vcf2bedGraph.pl.cwl
inputs:
- id: in_sample_order
  doc: ': sample order choose to output as bed file when there are multiple samples
    in the same vcf file. 1 means the first sample (default: 1)'
  type: File
  inputBinding:
    prefix: --sample_order
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
- id: out_sample_order
  doc: ': sample order choose to output as bed file when there are multiple samples
    in the same vcf file. 1 means the first sample (default: 1)'
  type: File
  outputBinding:
    glob: $(inputs.in_sample_order)
cwlVersion: v1.1
baseCommand:
- vcf2bedGraph.pl
