class: CommandLineTool
id: f4ratio.cwl
inputs:
- id: in__input_file
  doc: '[file name] input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_number_snps_block
  doc: '[int] number of SNPs per block for estimation of standard errors (1)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_populations_denominator_f
  doc: '[file name] populations for denominator of f4 ratio'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__populations_estimate
  doc: '[file name] populations to estimate'
  type: boolean
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- f4ratio
