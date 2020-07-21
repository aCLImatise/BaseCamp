class: CommandLineTool
id: ../../../dumpSTR.cwl
inputs:
- id: vcf
  doc: Input STR VCF file
  type: string
  inputBinding:
    prefix: --vcf
- id: out
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --out
- id: vcf_type
  doc: Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype
- id: min_locus_call_rate
  doc: Minimum locus call rate
  type: long
  inputBinding:
    prefix: --min-locus-callrate
- id: min_locus_h_wep
  doc: Filter loci failing HWE at this p-value threshold
  type: long
  inputBinding:
    prefix: --min-locus-hwep
- id: min_locus_het
  doc: Minimum locus heterozygosity
  type: long
  inputBinding:
    prefix: --min-locus-het
- id: max_locus_het
  doc: Maximum locus heterozygosity
  type: long
  inputBinding:
    prefix: --max-locus-het
- id: use_length
  doc: Calculate per-locus stats (het, HWE) collapsing alleles by length
  type: boolean
  inputBinding:
    prefix: --use-length
- id: filter_regions
  doc: Comma-separated list of BED files of regions to filter. Must be bgzipped and
    tabix indexed
  type: string
  inputBinding:
    prefix: --filter-regions
- id: filter_regions_names
  doc: Comma-separated list of filter names for each BED filter file
  type: string
  inputBinding:
    prefix: --filter-regions-names
- id: filter_h_run
  doc: Filter STRs with long homopolymer runs.
  type: boolean
  inputBinding:
    prefix: --filter-hrun
- id: drop_filtered
  doc: Drop filtered records from output
  type: boolean
  inputBinding:
    prefix: --drop-filtered
- id: hip_str_max_call_flank_in_del
  doc: Maximum call flank indel rate
  type: string
  inputBinding:
    prefix: --hipstr-max-call-flank-indel
- id: hip_str_max_call_stutter
  doc: Maximum call stutter rate
  type: string
  inputBinding:
    prefix: --hipstr-max-call-stutter
- id: hip_str_min_supp_reads
  doc: Minimum supporting reads for each allele
  type: string
  inputBinding:
    prefix: --hipstr-min-supp-reads
- id: hip_str_min_call_dp
  doc: Minimum call coverage
  type: string
  inputBinding:
    prefix: --hipstr-min-call-DP
- id: hip_str_max_call_dp
  doc: Maximum call coverage
  type: string
  inputBinding:
    prefix: --hipstr-max-call-DP
- id: hip_str_min_call_q
  doc: Minimum call quality score
  type: string
  inputBinding:
    prefix: --hipstr-min-call-Q
- id: gang_str_min_call_dp
  doc: Minimum call coverage
  type: string
  inputBinding:
    prefix: --gangstr-min-call-DP
- id: gang_str_max_call_dp
  doc: Maximum call coverage
  type: string
  inputBinding:
    prefix: --gangstr-max-call-DP
- id: gang_str_min_call_q
  doc: Minimum call quality score
  type: string
  inputBinding:
    prefix: --gangstr-min-call-Q
- id: gang_str_expansion_prob_het
  doc: Expansion prob-value threshold. Filters calls with probability of heterozygous
    expansion less than this
  type: string
  inputBinding:
    prefix: --gangstr-expansion-prob-het
- id: gang_str_expansion_prob_hom
  doc: Expansion prob-value threshold. Filters calls with probability of homozygous
    expansion less than this
  type: string
  inputBinding:
    prefix: --gangstr-expansion-prob-hom
- id: gang_str_expansion_prob_total
  doc: Expansion prob-value threshold. Filters calls with probability of total expansion
    less than this
  type: string
  inputBinding:
    prefix: --gangstr-expansion-prob-total
- id: gang_str_filter_span_only
  doc: Filter out all calls that only have spanning read support
  type: boolean
  inputBinding:
    prefix: --gangstr-filter-span-only
- id: gang_str_filter_span_bound_only
  doc: Filter out all reads except spanning and bounding
  type: boolean
  inputBinding:
    prefix: --gangstr-filter-spanbound-only
- id: gang_str_filter_bad_ci
  doc: Filter regions where the ML estimate is not in the CI
  type: boolean
  inputBinding:
    prefix: --gangstr-filter-badCI
- id: gang_str_require_support
  doc: Require each allele call to have at least n supporting reads
  type: string
  inputBinding:
    prefix: --gangstr-require-support
- id: gang_str_read_len
  doc: Read length used (bp). Required if using --require- support
  type: string
  inputBinding:
    prefix: --gangstr-readlen
- id: ad_vntr_min_call_dp
  doc: Minimum call coverage
  type: string
  inputBinding:
    prefix: --advntr-min-call-DP
- id: ad_vntr_max_call_dp
  doc: Maximum call coverage
  type: string
  inputBinding:
    prefix: --advntr-max-call-DP
- id: ad_vntr_min_spanning
  doc: Minimum spanning read count (SR field)
  type: string
  inputBinding:
    prefix: --advntr-min-spanning
- id: ad_vntr_min_flanking
  doc: Minimum flanking read count (FR field)
  type: string
  inputBinding:
    prefix: --advntr-min-flanking
- id: ad_vntr_min_ml
  doc: Minimum value of maximum likelihood (ML field)
  type: string
  inputBinding:
    prefix: --advntr-min-ML
- id: eh_min_adfl
  doc: Minimum number of flanking reads consistent with the allele
  type: string
  inputBinding:
    prefix: --eh-min-ADFL
- id: eh_min_a_dir
  doc: Minimum number of in-repeat reads consistent with the allele
  type: string
  inputBinding:
    prefix: --eh-min-ADIR
- id: eh_min_adsp
  doc: Minimum number of spanning reads consistent with the allele
  type: string
  inputBinding:
    prefix: --eh-min-ADSP
- id: eh_min_call_lc
  doc: Minimum call coverage
  type: string
  inputBinding:
    prefix: --eh-min-call-LC
- id: eh_max_call_lc
  doc: Maximum call coverage
  type: string
  inputBinding:
    prefix: --eh-max-call-LC
- id: pop_str_min_call_dp
  doc: Minimum call coverage
  type: string
  inputBinding:
    prefix: --popstr-min-call-DP
- id: pop_str_max_call_dp
  doc: Maximum call coverage
  type: string
  inputBinding:
    prefix: --popstr-max-call-DP
- id: pop_str_require_support
  doc: Require each allele call to have at least n supporting reads
  type: string
  inputBinding:
    prefix: --popstr-require-support
- id: num_records
  doc: Only process this many records
  type: string
  inputBinding:
    prefix: --num-records
- id: die_on_warning
  doc: Quit if a record can't be parsed
  type: boolean
  inputBinding:
    prefix: --die-on-warning
- id: verbose
  doc: Print out extra info
  type: boolean
  inputBinding:
    prefix: --verbose
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filtering
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: qc
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: str
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: genotypes
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpSTR
