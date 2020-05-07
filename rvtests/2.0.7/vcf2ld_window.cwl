class: CommandLineTool
id: vcf2ld_window.cwl
inputs:
- id: in_vcf
  doc: ': input VCF File'
  type: boolean
  inputBinding:
    prefix: --inVcf
- id: out
  doc: ': output prefix'
  type: boolean
  inputBinding:
    prefix: --out
- id: people_include_id
  doc: ': give IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: people_include_file
  doc: ': from given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeFile
- id: people_exclude_id
  doc: ': give IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: people_exclude_file
  doc: ': from given file, set IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeFile
- id: range_list
  doc: ': Specify some ranges to use, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeList
- id: range_file
  doc: ': Specify the file containing ranges, please use chr:begin-end format.'
  type: boolean
  inputBinding:
    prefix: --rangeFile
- id: site_file
  doc: ': Specify the file containing sites to include, please use "chr pos" format.'
  type: boolean
  inputBinding:
    prefix: --siteFile
- id: window
  doc: ': specify sliding window size to calculate covariance'
  type: boolean
  inputBinding:
    prefix: --window
- id: anchor
  doc: ': specify anchors SNPs to compare with. e.g. 1:20-20'
  type: boolean
  inputBinding:
    prefix: --anchor
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2ld_window
