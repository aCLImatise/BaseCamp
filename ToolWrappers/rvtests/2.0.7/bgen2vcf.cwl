class: CommandLineTool
id: bgen2vcf.cwl
inputs:
- id: in_in_bg_en
  doc: ': Input BGEN File'
  type: boolean?
  inputBinding:
    prefix: --inBgen
- id: in_in_bg_en_sample
  doc: ': Input SAMPLE file for the BGEN File'
  type: boolean?
  inputBinding:
    prefix: --inBgenSample
- id: in_out
  doc: ': Output prefix'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_people_include_id
  doc: ': give IDs of people that will be included in study'
  type: boolean?
  inputBinding:
    prefix: --peopleIncludeID
- id: in_people_include_file
  doc: ": from given file, set IDs of people that will be\nincluded in study"
  type: boolean?
  inputBinding:
    prefix: --peopleIncludeFile
- id: in_people_exclude_id
  doc: ': give IDs of people that will be included in study'
  type: boolean?
  inputBinding:
    prefix: --peopleExcludeID
- id: in_people_exclude_file
  doc: ": from given file, set IDs of people that will be\nincluded in study"
  type: boolean?
  inputBinding:
    prefix: --peopleExcludeFile
- id: in_range_list
  doc: ': Specify some ranges to use, please use chr:begin-end'
  type: boolean?
  inputBinding:
    prefix: --rangeList
- id: in_site_file
  doc: ": Specify the file containing site to extract, please use\nchr:pos format."
  type: boolean?
  inputBinding:
    prefix: --siteFile
- id: in_hide_varid
  doc: ': Do not output Variant ID (only output rsid)'
  type: boolean?
  inputBinding:
    prefix: --hideVarId
- id: in_hide_gt
  doc: ': Do not call genotypes by skipping the GT tag'
  type: boolean?
  inputBinding:
    prefix: --hideGT
- id: in_show_ds
  doc: ': Calculate bi-allelic dosage using the DS tag'
  type: boolean?
  inputBinding:
    prefix: --showDS
- id: in_format_dot
  doc: '--rangeFile: Specify the file containing ranges, please use'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bgen2vcf
