#!/usr/bin/env cwl-runner

baseCommand:
- vcffilter
class: CommandLineTool
cwlVersion: v1.0
id: vcffilter
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: specifies a filter to apply to the info fields of records, removes alleles
    which do not pass the filter
  id: info_filter
  inputBinding:
    prefix: --info-filter
  type: boolean
- doc: a filter to apply to the genotype fields of records
  id: genotype_filter
  inputBinding:
    prefix: --genotype-filter
  type: string
- doc: used in conjunction with '-g', keeps variant info, but removes genotype
  id: keep_info
  inputBinding:
    prefix: --keep-info
  type: boolean
- doc: filter entire records, not just alleles
  id: filter_sites
  inputBinding:
    prefix: --filter-sites
  type: boolean
- doc: tag vcf records as positively filtered with this tag, print all records
  id: tag_pass
  inputBinding:
    prefix: --tag-pass
  type: boolean
- doc: tag vcf records as negatively filtered with this tag, print all records
  id: tag_fail
  inputBinding:
    prefix: --tag-fail
  type: boolean
- doc: append the existing filter tag, don't just replace it
  id: append_filter
  inputBinding:
    prefix: --append-filter
  type: boolean
- doc: apply -t on a per-allele basis.  adds or sets the corresponding INFO field
    tag
  id: allele_tag
  inputBinding:
    prefix: --allele-tag
  type: boolean
- doc: inverts the filter, e.g. grep -v
  id: invert
  inputBinding:
    prefix: --invert
  type: boolean
- doc: use logical OR instead of AND to combine filters
  id: or
  inputBinding:
    prefix: --or
  type: boolean
- doc: specify a region on which to target the filtering, requires a BGZF compressed
    file which has been indexed with tabix.  any number of regions may be specified.
  id: region
  inputBinding:
    prefix: --region
  type: boolean
- doc: '"DP > 10"  # for info fields'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '"GT = 1|1" # for genotype fields'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: "\"CpG\"  # for 'flag' fields"
  id: f
  inputBinding:
    prefix: -f
  type: boolean
