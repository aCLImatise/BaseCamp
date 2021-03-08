class: CommandLineTool
id: vcffilter.cwl
inputs:
- id: in_info_filter
  doc: "specifies a filter to apply to the info fields of records,\nremoves alleles\
    \ which do not pass the filter"
  type: boolean?
  inputBinding:
    prefix: --info-filter
- id: in_genotype_filter
  doc: a filter to apply to the genotype fields of records
  type: string?
  inputBinding:
    prefix: --genotype-filter
- id: in_keep_info
  doc: used in conjunction with '-g', keeps variant info, but removes genotype
  type: boolean?
  inputBinding:
    prefix: --keep-info
- id: in_filter_sites
  doc: filter entire records, not just alleles
  type: boolean?
  inputBinding:
    prefix: --filter-sites
- id: in_tag_pass
  doc: tag vcf records as positively filtered with this tag, print all records
  type: boolean?
  inputBinding:
    prefix: --tag-pass
- id: in_tag_fail
  doc: tag vcf records as negatively filtered with this tag, print all records
  type: boolean?
  inputBinding:
    prefix: --tag-fail
- id: in_append_filter
  doc: append the existing filter tag, don't just replace it
  type: boolean?
  inputBinding:
    prefix: --append-filter
- id: in_allele_tag
  doc: apply -t on a per-allele basis.  adds or sets the corresponding INFO field
    tag
  type: boolean?
  inputBinding:
    prefix: --allele-tag
- id: in_invert
  doc: inverts the filter, e.g. grep -v
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_or
  doc: use logical OR instead of AND to combine filters
  type: boolean?
  inputBinding:
    prefix: --or
- id: in_region
  doc: "specify a region on which to target the filtering, requires a BGZF\ncompressed\
    \ file which has been indexed with tabix.  any number of\nregions may be specified."
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcffilter
