class: CommandLineTool
id: rtg_help_vcfsubset.cwl
inputs:
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: input
  doc: VCF file containing variants to manipulate. Use '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: region
  doc: if set, only read VCF records within the specified range. The format is one
    of <sequence_name>, <sequence_name>:<start>-<end>, <sequence_name>:<pos>+<length>
    or <sequence_name>:<pos>~<padding>
  type: string
  inputBinding:
    prefix: --region
- id: keep_filter
  doc: keep the specified FILTER tag. May be specified 0 or more times, or as a comma
    separated list
  type: string
  inputBinding:
    prefix: --keep-filter
- id: keep_format
  doc: keep the specified FORMAT field. May be specified 0 or more times, or as a
    comma separated list
  type: string
  inputBinding:
    prefix: --keep-format
- id: keep_info
  doc: keep the specified INFO tag. May be specified 0 or more times, or as a comma
    separated list
  type: string
  inputBinding:
    prefix: --keep-info
- id: keep_sample
  doc: '|FILE   file containing sample IDs to keep, or a literal sample name. May
    be specified 0 or more times, or as a comma separated list'
  type: string
  inputBinding:
    prefix: --keep-sample
- id: remove_filter
  doc: remove the specified FILTER tag. May be specified 0 or more times, or as a
    comma separated list
  type: string
  inputBinding:
    prefix: --remove-filter
- id: remove_filters
  doc: remove all FILTER tags
  type: boolean
  inputBinding:
    prefix: --remove-filters
- id: remove_format
  doc: remove the specified FORMAT field. May be specified 0 or more times, or as
    a comma separated list
  type: string
  inputBinding:
    prefix: --remove-format
- id: remove_ids
  doc: remove the contents of the ID field
  type: boolean
  inputBinding:
    prefix: --remove-ids
- id: remove_info
  doc: remove the specified INFO tag. May be specified 0 or more times, or as a comma
    separated list
  type: string
  inputBinding:
    prefix: --remove-info
- id: remove_infos
  doc: remove all INFO tags
  type: boolean
  inputBinding:
    prefix: --remove-infos
- id: remove_qual
  doc: remove the QUAL field
  type: boolean
  inputBinding:
    prefix: --remove-qual
- id: remove_sample
  doc: '|FILE file containing sample IDs to remove, or a literal sample name. May
    be specified 0 or more times, or as a comma separated list'
  type: string
  inputBinding:
    prefix: --remove-sample
- id: remove_samples
  doc: remove all samples
  type: boolean
  inputBinding:
    prefix: --remove-samples
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- vcfsubset
