class: CommandLineTool
id: rtg_vcfsubset.cwl
inputs:
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap\nthe ranges contained in the specified\
    \ BED\nfile"
  type: File?
  inputBinding:
    prefix: --bed-regions
- id: in_input
  doc: "VCF file containing variants to manipulate.\nUse '-' to read from standard\
    \ input"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_vcf_file
  doc: output VCF file. Use '-' to write to standard
  type: File?
  inputBinding:
    prefix: --output
- id: in_keep_filter
  doc: "keep the specified FILTER tag. May be\nspecified 0 or more times, or as a\
    \ comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --keep-filter
- id: in_keep_format
  doc: "keep the specified FORMAT field. May be\nspecified 0 or more times, or as\
    \ a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --keep-format
- id: in_keep_info
  doc: "keep the specified INFO tag. May be specified\n0 or more times, or as a comma\
    \ separated list"
  type: long?
  inputBinding:
    prefix: --keep-info
- id: in_keep_sample
  doc: "|FILE   file containing sample IDs to keep, or a\nliteral sample name. May\
    \ be specified 0 or\nmore times, or as a comma separated list"
  type: File?
  inputBinding:
    prefix: --keep-sample
- id: in_remove_filter
  doc: "remove the specified FILTER tag. May be\nspecified 0 or more times, or as\
    \ a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --remove-filter
- id: in_remove_filters
  doc: remove all FILTER tags
  type: boolean?
  inputBinding:
    prefix: --remove-filters
- id: in_remove_format
  doc: "remove the specified FORMAT field. May be\nspecified 0 or more times, or as\
    \ a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --remove-format
- id: in_remove_ids
  doc: remove the contents of the ID field
  type: boolean?
  inputBinding:
    prefix: --remove-ids
- id: in_remove_info
  doc: "remove the specified INFO tag. May be\nspecified 0 or more times, or as a\
    \ comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --remove-info
- id: in_remove_infos
  doc: remove all INFO tags
  type: boolean?
  inputBinding:
    prefix: --remove-infos
- id: in_remove_qual
  doc: remove the QUAL field
  type: boolean?
  inputBinding:
    prefix: --remove-qual
- id: in_remove_sample
  doc: "|FILE file containing sample IDs to remove, or a\nliteral sample name. May\
    \ be specified 0 or\nmore times, or as a comma separated list"
  type: File?
  inputBinding:
    prefix: --remove-sample
- id: in_remove_samples
  doc: remove all samples
  type: boolean?
  inputBinding:
    prefix: --remove-samples
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_no_header
  doc: prevent VCF header from being written
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in__regionregion_only
  doc: --region=REGION             if set, only read VCF records within the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_file
  doc: output VCF file. Use '-' to write to standard
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- vcfsubset
