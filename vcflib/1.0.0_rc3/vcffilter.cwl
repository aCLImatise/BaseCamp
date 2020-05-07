class: CommandLineTool
id: vcffilter.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: info_filter
  doc: specifies a filter to apply to the info fields of records, removes alleles
    which do not pass the filter
  type: boolean
  inputBinding:
    prefix: --info-filter
- id: genotype_filter
  doc: a filter to apply to the genotype fields of records
  type: string
  inputBinding:
    prefix: --genotype-filter
- id: keep_info
  doc: used in conjunction with '-g', keeps variant info, but removes genotype
  type: boolean
  inputBinding:
    prefix: --keep-info
- id: filter_sites
  doc: filter entire records, not just alleles
  type: boolean
  inputBinding:
    prefix: --filter-sites
- id: tag_pass
  doc: tag vcf records as positively filtered with this tag, print all records
  type: boolean
  inputBinding:
    prefix: --tag-pass
- id: tag_fail
  doc: tag vcf records as negatively filtered with this tag, print all records
  type: boolean
  inputBinding:
    prefix: --tag-fail
- id: append_filter
  doc: append the existing filter tag, don't just replace it
  type: boolean
  inputBinding:
    prefix: --append-filter
- id: allele_tag
  doc: apply -t on a per-allele basis.  adds or sets the corresponding INFO field
    tag
  type: boolean
  inputBinding:
    prefix: --allele-tag
- id: invert
  doc: inverts the filter, e.g. grep -v
  type: boolean
  inputBinding:
    prefix: --invert
- id: or
  doc: use logical OR instead of AND to combine filters
  type: boolean
  inputBinding:
    prefix: --or
- id: region
  doc: specify a region on which to target the filtering, requires a BGZF compressed
    file which has been indexed with tabix.  any number of regions may be specified.
  type: boolean
  inputBinding:
    prefix: --region
- id: f
  doc: '"DP > 10"  # for info fields'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: '"GT = 1|1" # for genotype fields'
  type: boolean
  inputBinding:
    prefix: -g
- id: f
  doc: "\"CpG\"  # for 'flag' fields"
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- vcffilter
