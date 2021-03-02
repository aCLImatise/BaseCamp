class: CommandLineTool
id: rtg_vcffilter.cwl
inputs:
- id: in_clear_failed_samples
  doc: ', and --fail-samples options for alternatives.'
  type: boolean?
  inputBinding:
    prefix: --clear-failed-samples
- id: in_all_samples
  doc: "apply sample-specific criteria to all\nsamples contained in the input VCF"
  type: boolean?
  inputBinding:
    prefix: --all-samples
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap\nthe ranges contained in the specified\
    \ BED\nfile"
  type: File?
  inputBinding:
    prefix: --bed-regions
- id: in_input
  doc: "VCF file containing variants to be\nfiltered. Use '-' to read from standard\n\
    input"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output VCF file. Use '-' to write to\nstandard output. This option is required,\n\
    unless \"--javascript\" is being used"
  type: File?
  inputBinding:
    prefix: --output
- id: in_region
  doc: "if set, only read VCF records within the\nspecified range. The format is one\
    \ of\n<sequence_name>,\n<sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length>\
    \ or\n<sequence_name>:<pos>~<padding>"
  type: long?
  inputBinding:
    prefix: --region
- id: in_sample
  doc: "apply sample-specific criteria to the named\nsample contained in the input\
    \ VCF. May be\nspecified 0 or more times"
  type: long?
  inputBinding:
    prefix: --sample
- id: in_density_window
  doc: window within which multiple variants are
  type: long?
  inputBinding:
    prefix: --density-window
- id: in_exclude_vcf
  doc: "discard all variants that overlap with the\nones in this file"
  type: File?
  inputBinding:
    prefix: --exclude-vcf
- id: in_include_bed
  doc: "only keep variants within the regions in\nthis BED file"
  type: File?
  inputBinding:
    prefix: --include-bed
- id: in_include_vcf
  doc: "only keep variants that overlap with the\nones in this file"
  type: File?
  inputBinding:
    prefix: --include-vcf
- id: in_javascript
  doc: "javascript filtering functions for\ndetermining whether to keep record. May\
    \ be\neither an expression or a file name. May be\nspecified 0 or more times"
  type: File?
  inputBinding:
    prefix: --javascript
- id: in_keep_expr
  doc: "records for which this expression evaluates\nto true will be retained"
  type: string?
  inputBinding:
    prefix: --keep-expr
- id: in_keep_filter
  doc: "only keep variants with this FILTER tag.\nMay be specified 0 or more times,\
    \ or as a\ncomma separated list"
  type: long?
  inputBinding:
    prefix: --keep-filter
- id: in_keep_info
  doc: "only keep variants with this INFO tag. May\nbe specified 0 or more times,\
    \ or as a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --keep-info
- id: in_max_alleles
  doc: maximum number of alleles (REF included)
  type: long?
  inputBinding:
    prefix: --max-alleles
- id: in_max_combined_read_depth
  doc: maximum allowed combined read depth
  type: long?
  inputBinding:
    prefix: --max-combined-read-depth
- id: in_max_quality
  doc: maximum allowed quality
  type: double?
  inputBinding:
    prefix: --max-quality
- id: in_min_alleles
  doc: minimum number of alleles (REF included)
  type: long?
  inputBinding:
    prefix: --min-alleles
- id: in_min_combined_read_depth
  doc: minimum allowed combined read depth
  type: long?
  inputBinding:
    prefix: --min-combined-read-depth
- id: in_min_quality
  doc: minimum allowed quality
  type: double?
  inputBinding:
    prefix: --min-quality
- id: in_remove_filter
  doc: "remove variants with this FILTER tag. May\nbe specified 0 or more times, or\
    \ as a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --remove-filter
- id: in_remove_info
  doc: "remove variants with this INFO tag. May be\nspecified 0 or more times, or\
    \ as a comma\nseparated list"
  type: long?
  inputBinding:
    prefix: --remove-info
- id: in_remove_overlapping
  doc: remove records that overlap with previous
  type: boolean?
  inputBinding:
    prefix: --remove-overlapping
- id: in_max_ambiguity_ratio
  doc: maximum allowed ambiguity ratio
  type: double?
  inputBinding:
    prefix: --max-ambiguity-ratio
- id: in_max_avr_score
  doc: maximum allowed AVR score
  type: double?
  inputBinding:
    prefix: --max-avr-score
- id: in_max_de_novo_score
  doc: maximum de novo score threshold
  type: double?
  inputBinding:
    prefix: --max-denovo-score
- id: in_max_genotype_quality
  doc: maximum allowed genotype quality
  type: double?
  inputBinding:
    prefix: --max-genotype-quality
- id: in_max_read_depth
  doc: maximum allowed sample read depth
  type: long?
  inputBinding:
    prefix: --max-read-depth
- id: in_min_avr_score
  doc: minimum allowed AVR score
  type: double?
  inputBinding:
    prefix: --min-avr-score
- id: in_min_de_novo_score
  doc: minimum de novo score threshold
  type: double?
  inputBinding:
    prefix: --min-denovo-score
- id: in_min_genotype_quality
  doc: minimum allowed genotype quality
  type: double?
  inputBinding:
    prefix: --min-genotype-quality
- id: in_min_read_depth
  doc: minimum allowed sample read depth
  type: long?
  inputBinding:
    prefix: --min-read-depth
- id: in_non_snps_only
  doc: only keep where sample variant is MNP or
  type: boolean?
  inputBinding:
    prefix: --non-snps-only
- id: in_remove_same_as_ref
  doc: remove where sample is same as reference
  type: boolean?
  inputBinding:
    prefix: --remove-same-as-ref
- id: in_snps_only
  doc: only keep where sample variant is a simple
  type: boolean?
  inputBinding:
    prefix: --snps-only
- id: in_fail
  doc: "retain failed records, add the provided\nlabel to the FILTER field"
  type: string?
  inputBinding:
    prefix: --fail
- id: in_fail_samples
  doc: "retain failed records, add the provided\nlabel to the sample FT field"
  type: string?
  inputBinding:
    prefix: --fail-samples
- id: in_add_header
  doc: "|FILE      file containing VCF header lines to add, or\na literal header line.\
    \ May be specified 0\nor more times"
  type: File?
  inputBinding:
    prefix: --add-header
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
- id: in_discarded
  doc: --exclude-bed=FILE            discard all variants within the regions in
  type: string
  inputBinding:
    position: 0
- id: in_records
  doc: Filtering (Sample based)
  type: string
  inputBinding:
    position: 0
- id: in_in_del
  doc: --remove-all-same-as-ref      remove where all samples are same as
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: --remove-hom                  remove where sample is homozygous
  type: string
  inputBinding:
    position: 2
- id: in_snp
  doc: Reporting
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output VCF file. Use '-' to write to\nstandard output. This option is required,\n\
    unless \"--javascript\" is being used"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- vcffilter
