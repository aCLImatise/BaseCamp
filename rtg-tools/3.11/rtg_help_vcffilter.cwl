class: CommandLineTool
id: rtg_help_vcffilter.cwl
inputs:
- id: all_samples
  doc: apply sample-specific criteria to all samples contained in the input VCF
  type: boolean
  inputBinding:
    prefix: --all-samples
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: input
  doc: VCF file containing variants to be filtered. Use '-' to read from standard
    input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file. Use '-' to write to standard output. This option is required,
    unless "--javascript" is being used
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
- id: sample
  doc: apply sample-specific criteria to the named sample contained in the input VCF.
    May be specified 0 or more times
  type: string
  inputBinding:
    prefix: --sample
- id: density_window
  doc: window within which multiple variants are discarded
  type: long
  inputBinding:
    prefix: --density-window
- id: exclude_bed
  doc: discard all variants within the regions in this BED file
  type: File
  inputBinding:
    prefix: --exclude-bed
- id: exclude_vcf
  doc: discard all variants that overlap with the ones in this file
  type: File
  inputBinding:
    prefix: --exclude-vcf
- id: include_bed
  doc: only keep variants within the regions in this BED file
  type: File
  inputBinding:
    prefix: --include-bed
- id: include_vcf
  doc: only keep variants that overlap with the ones in this file
  type: File
  inputBinding:
    prefix: --include-vcf
- id: javascript
  doc: javascript filtering functions for determining whether to keep record. May
    be either an expression or a file name. May be specified 0 or more times
  type: string
  inputBinding:
    prefix: --javascript
- id: keep_expr
  doc: records for which this expression evaluates to true will be retained
  type: string
  inputBinding:
    prefix: --keep-expr
- id: keep_filter
  doc: only keep variants with this FILTER tag. May be specified 0 or more times,
    or as a comma separated list
  type: string
  inputBinding:
    prefix: --keep-filter
- id: keep_info
  doc: only keep variants with this INFO tag. May be specified 0 or more times, or
    as a comma separated list
  type: string
  inputBinding:
    prefix: --keep-info
- id: max_alleles
  doc: maximum number of alleles (REF included)
  type: long
  inputBinding:
    prefix: --max-alleles
- id: max_combined_read_depth
  doc: maximum allowed combined read depth
  type: long
  inputBinding:
    prefix: --max-combined-read-depth
- id: max_quality
  doc: maximum allowed quality
  type: double
  inputBinding:
    prefix: --max-quality
- id: min_alleles
  doc: minimum number of alleles (REF included)
  type: long
  inputBinding:
    prefix: --min-alleles
- id: min_combined_read_depth
  doc: minimum allowed combined read depth
  type: long
  inputBinding:
    prefix: --min-combined-read-depth
- id: min_quality
  doc: minimum allowed quality
  type: double
  inputBinding:
    prefix: --min-quality
- id: remove_filter
  doc: remove variants with this FILTER tag. May be specified 0 or more times, or
    as a comma separated list
  type: string
  inputBinding:
    prefix: --remove-filter
- id: remove_info
  doc: remove variants with this INFO tag. May be specified 0 or more times, or as
    a comma separated list
  type: string
  inputBinding:
    prefix: --remove-info
- id: remove_overlapping
  doc: remove records that overlap with previous records
  type: boolean
  inputBinding:
    prefix: --remove-overlapping
- id: max_ambiguity_ratio
  doc: maximum allowed ambiguity ratio
  type: double
  inputBinding:
    prefix: --max-ambiguity-ratio
- id: max_avr_score
  doc: maximum allowed AVR score
  type: double
  inputBinding:
    prefix: --max-avr-score
- id: max_de_novo_score
  doc: maximum de novo score threshold
  type: double
  inputBinding:
    prefix: --max-denovo-score
- id: max_genotype_quality
  doc: maximum allowed genotype quality
  type: double
  inputBinding:
    prefix: --max-genotype-quality
- id: max_read_depth
  doc: maximum allowed sample read depth
  type: long
  inputBinding:
    prefix: --max-read-depth
- id: min_avr_score
  doc: minimum allowed AVR score
  type: double
  inputBinding:
    prefix: --min-avr-score
- id: min_de_novo_score
  doc: minimum de novo score threshold
  type: double
  inputBinding:
    prefix: --min-denovo-score
- id: min_genotype_quality
  doc: minimum allowed genotype quality
  type: double
  inputBinding:
    prefix: --min-genotype-quality
- id: min_read_depth
  doc: minimum allowed sample read depth
  type: long
  inputBinding:
    prefix: --min-read-depth
- id: non_snps_only
  doc: only keep where sample variant is MNP or INDEL
  type: boolean
  inputBinding:
    prefix: --non-snps-only
- id: remove_all_same_as_ref
  doc: remove where all samples are same as reference
  type: boolean
  inputBinding:
    prefix: --remove-all-same-as-ref
- id: remove_hom
  doc: remove where sample is homozygous
  type: boolean
  inputBinding:
    prefix: --remove-hom
- id: remove_same_as_ref
  doc: remove where sample is same as reference
  type: boolean
  inputBinding:
    prefix: --remove-same-as-ref
- id: snps_only
  doc: only keep where sample variant is a simple SNP
  type: boolean
  inputBinding:
    prefix: --snps-only
- id: clear_failed_samples
  doc: retain failed records, set the sample GT field to missing
  type: boolean
  inputBinding:
    prefix: --clear-failed-samples
- id: fail
  doc: retain failed records, add the provided label to the FILTER field
  type: string
  inputBinding:
    prefix: --fail
- id: fail_samples
  doc: retain failed records, add the provided label to the sample FT field
  type: string
  inputBinding:
    prefix: --fail-samples
- id: add_header
  doc: '|FILE      file containing VCF header lines to add, or a literal header line.
    May be specified 0 or more times'
  type: string
  inputBinding:
    prefix: --add-header
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
- vcffilter
