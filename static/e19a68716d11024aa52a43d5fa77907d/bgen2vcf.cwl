class: CommandLineTool
id: bgen2vcf.cwl
inputs:
- id: in_bg_en
  doc: ': Input BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgen
- id: in_bg_en_sample
  doc: ': Input SAMPLE file for the BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgenSample
- id: out
  doc: ': Output prefix'
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
  doc: ': Specify the file containing site to extract, please use chr:pos format.'
  type: boolean
  inputBinding:
    prefix: --siteFile
- id: hide_varid
  doc: ': Do not output Variant ID (only output rsid)'
  type: boolean
  inputBinding:
    prefix: --hideVarId
- id: hide_gt
  doc: ': Do not call genotypes by skipping the GT tag'
  type: boolean
  inputBinding:
    prefix: --hideGT
- id: show_ds
  doc: ': Calculate bi-allelic dosage using the DS tag'
  type: boolean
  inputBinding:
    prefix: --showDS
outputs: []
cwlVersion: v1.1
baseCommand:
- bgen2vcf
