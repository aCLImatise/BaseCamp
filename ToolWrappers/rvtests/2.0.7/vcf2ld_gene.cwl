class: CommandLineTool
id: ../../../vcf2ld_gene.cwl
inputs:
- id: in_in_vcf
  doc: ': input VCF File'
  type: boolean
  inputBinding:
    prefix: --inVcf
- id: in_out
  doc: ': output prefix'
  type: boolean
  inputBinding:
    prefix: --out
- id: in_people_include_id
  doc: ': give IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleIncludeID
- id: in_people_include_file
  doc: ": from given file, set IDs of people that will be\nincluded in study"
  type: boolean
  inputBinding:
    prefix: --peopleIncludeFile
- id: in_people_exclude_id
  doc: ': give IDs of people that will be included in study'
  type: boolean
  inputBinding:
    prefix: --peopleExcludeID
- id: in_people_exclude_file
  doc: ": from given file, set IDs of people that will be\nincluded in study"
  type: boolean
  inputBinding:
    prefix: --peopleExcludeFile
- id: in_range_list
  doc: ': Specify some ranges to use, please use chr:begin-end'
  type: boolean
  inputBinding:
    prefix: --rangeList
- id: in_site_file
  doc: ": Specify the file containing sites to include, please\nuse \"chr pos\" format."
  type: boolean
  inputBinding:
    prefix: --siteFile
- id: in_gene_file
  doc: ': specify a gene file (for burden tests)'
  type: boolean
  inputBinding:
    prefix: --geneFile
- id: in_gene
  doc: ': specify which genes to test'
  type: boolean
  inputBinding:
    prefix: --gene
- id: in_format_dot
  doc: '--rangeFile: Specify the file containing ranges, please use'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2ld_gene
