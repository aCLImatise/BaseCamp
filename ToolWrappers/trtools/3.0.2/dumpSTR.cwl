class: CommandLineTool
id: dumpSTR.cwl
inputs:
- id: in_vcf
  doc: Input STR VCF file
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_out
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --out
- id: in_vcf_type
  doc: "Options=['gangstr', 'advntr', 'hipstr', 'eh',\n'popstr'] (default: auto)"
  type: string?
  inputBinding:
    prefix: --vcftype
- id: in_min_locus_call_rate
  doc: Minimum locus call rate
  type: long?
  inputBinding:
    prefix: --min-locus-callrate
- id: in_min_locus_h_wep
  doc: Filter loci failing HWE at this p-value threshold
  type: long?
  inputBinding:
    prefix: --min-locus-hwep
- id: in_min_locus_het
  doc: Minimum locus heterozygosity
  type: long?
  inputBinding:
    prefix: --min-locus-het
- id: in_max_locus_het
  doc: Maximum locus heterozygosity
  type: long?
  inputBinding:
    prefix: --max-locus-het
- id: in_use_length
  doc: "Calculate per-locus stats (het, HWE) collapsing\nalleles by length (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --use-length
- id: in_filter_regions
  doc: "Comma-separated list of BED files of regions to\nfilter. Must be bgzipped\
    \ and tabix indexed"
  type: string?
  inputBinding:
    prefix: --filter-regions
- id: in_filter_regions_names
  doc: "Comma-separated list of filter names for each BED\nfilter file"
  type: File?
  inputBinding:
    prefix: --filter-regions-names
- id: in_filter_h_run
  doc: "Filter STRs with long homopolymer runs. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --filter-hrun
- id: in_drop_filtered
  doc: 'Drop filtered records from output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --drop-filtered
- id: in_hip_str_max_call_flank_in_del
  doc: Maximum call flank indel rate
  type: long?
  inputBinding:
    prefix: --hipstr-max-call-flank-indel
- id: in_hip_str_max_call_stutter
  doc: Maximum call stutter rate
  type: long?
  inputBinding:
    prefix: --hipstr-max-call-stutter
- id: in_hip_str_min_supp_reads
  doc: Minimum supporting reads for each allele
  type: long?
  inputBinding:
    prefix: --hipstr-min-supp-reads
- id: in_hip_str_min_call_dp
  doc: Minimum call coverage
  type: long?
  inputBinding:
    prefix: --hipstr-min-call-DP
- id: in_hip_str_max_call_dp
  doc: Maximum call coverage
  type: long?
  inputBinding:
    prefix: --hipstr-max-call-DP
- id: in_hip_str_min_call_q
  doc: Minimum call quality score
  type: long?
  inputBinding:
    prefix: --hipstr-min-call-Q
- id: in_gang_str_min_call_dp
  doc: Minimum call coverage
  type: long?
  inputBinding:
    prefix: --gangstr-min-call-DP
- id: in_gang_str_max_call_dp
  doc: Maximum call coverage
  type: long?
  inputBinding:
    prefix: --gangstr-max-call-DP
- id: in_gang_str_min_call_q
  doc: Minimum call quality score
  type: long?
  inputBinding:
    prefix: --gangstr-min-call-Q
- id: in_gang_str_expansion_prob_het
  doc: "Expansion prob-value threshold. Filters calls with\nprobability of heterozygous\
    \ expansion less than this"
  type: string?
  inputBinding:
    prefix: --gangstr-expansion-prob-het
- id: in_gang_str_expansion_prob_hom
  doc: "Expansion prob-value threshold. Filters calls with\nprobability of homozygous\
    \ expansion less than this"
  type: string?
  inputBinding:
    prefix: --gangstr-expansion-prob-hom
- id: in_gang_str_expansion_prob_total
  doc: "Expansion prob-value threshold. Filters calls with\nprobability of total expansion\
    \ less than this"
  type: string?
  inputBinding:
    prefix: --gangstr-expansion-prob-total
- id: in_gang_str_filter_span_only
  doc: "Filter out all calls that only have spanning read\nsupport (default: False)"
  type: boolean?
  inputBinding:
    prefix: --gangstr-filter-span-only
- id: in_gang_str_filter_span_bound_only
  doc: "Filter out all reads except spanning and bounding\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --gangstr-filter-spanbound-only
- id: in_gang_str_filter_bad_ci
  doc: "Filter regions where the ML estimate is not in the CI\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --gangstr-filter-badCI
- id: in_gang_str_require_support
  doc: "Require each allele call to have at least n supporting\nreads"
  type: string?
  inputBinding:
    prefix: --gangstr-require-support
- id: in_gang_str_read_len
  doc: "Read length used (bp). Required if using --require-\nsupport"
  type: long?
  inputBinding:
    prefix: --gangstr-readlen
- id: in_ad_vntr_min_call_dp
  doc: Minimum call coverage
  type: long?
  inputBinding:
    prefix: --advntr-min-call-DP
- id: in_ad_vntr_max_call_dp
  doc: Maximum call coverage
  type: long?
  inputBinding:
    prefix: --advntr-max-call-DP
- id: in_ad_vntr_min_spanning
  doc: Minimum spanning read count (SR field)
  type: long?
  inputBinding:
    prefix: --advntr-min-spanning
- id: in_ad_vntr_min_flanking
  doc: Minimum flanking read count (FR field)
  type: long?
  inputBinding:
    prefix: --advntr-min-flanking
- id: in_ad_vntr_min_ml
  doc: Minimum value of maximum likelihood (ML field)
  type: long?
  inputBinding:
    prefix: --advntr-min-ML
- id: in_eh_min_adfl
  doc: "Minimum number of flanking reads consistent with the\nallele"
  type: long?
  inputBinding:
    prefix: --eh-min-ADFL
- id: in_eh_min_a_dir
  doc: "Minimum number of in-repeat reads consistent with the\nallele"
  type: long?
  inputBinding:
    prefix: --eh-min-ADIR
- id: in_eh_min_adsp
  doc: "Minimum number of spanning reads consistent with the\nallele"
  type: long?
  inputBinding:
    prefix: --eh-min-ADSP
- id: in_eh_min_call_lc
  doc: Minimum call coverage
  type: long?
  inputBinding:
    prefix: --eh-min-call-LC
- id: in_eh_max_call_lc
  doc: Maximum call coverage
  type: long?
  inputBinding:
    prefix: --eh-max-call-LC
- id: in_pop_str_min_call_dp
  doc: Minimum call coverage
  type: long?
  inputBinding:
    prefix: --popstr-min-call-DP
- id: in_pop_str_max_call_dp
  doc: Maximum call coverage
  type: long?
  inputBinding:
    prefix: --popstr-max-call-DP
- id: in_pop_str_require_support
  doc: "Require each allele call to have at least n supporting\nreads"
  type: string?
  inputBinding:
    prefix: --popstr-require-support
- id: in_num_records
  doc: Only process this many records
  type: long?
  inputBinding:
    prefix: --num-records
- id: in_die_on_warning
  doc: "Quit if a record can't be parsed (default: False)"
  type: boolean?
  inputBinding:
    prefix: --die-on-warning
- id: in_verbose
  doc: 'Print out extra info (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filtering
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_qc
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_tr
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_genotypes
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dumpSTR
