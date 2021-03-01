class: CommandLineTool
id: threepop.cwl
inputs:
- id: in__input_file
  doc: '[file name] input file'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_number_snps_block
  doc: '[int] number of SNPs per block for estimation of standard errors (1)'
  type: boolean?
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- threepop
