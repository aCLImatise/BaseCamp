version 1.0

task DumpSTR {
  input {
    String? vcf
    String? out
    String? vcf_type
    Int? min_locus_call_rate
    Int? min_locus_h_wep
    Int? min_locus_het
    Int? max_locus_het
    Boolean? use_length
    String? filter_regions
    String? filter_regions_names
    Boolean? filter_h_run
    Boolean? drop_filtered
    String? hip_str_max_call_flank_in_del
    String? hip_str_max_call_stutter
    String? hip_str_min_supp_reads
    String? hip_str_min_call_dp
    String? hip_str_max_call_dp
    String? hip_str_min_call_q
    String? gang_str_min_call_dp
    String? gang_str_max_call_dp
    String? gang_str_min_call_q
    String? gang_str_expansion_prob_het
    String? gang_str_expansion_prob_hom
    String? gang_str_expansion_prob_total
    Boolean? gang_str_filter_span_only
    Boolean? gang_str_filter_span_bound_only
    Boolean? gang_str_filter_bad_ci
    String? gang_str_require_support
    String? gang_str_read_len
    String? ad_vntr_min_call_dp
    String? ad_vntr_max_call_dp
    String? ad_vntr_min_spanning
    String? ad_vntr_min_flanking
    String? ad_vntr_min_ml
    String? eh_min_adfl
    String? eh_min_a_dir
    String? eh_min_adsp
    String? eh_min_call_lc
    String? eh_max_call_lc
    String? pop_str_min_call_dp
    String? pop_str_max_call_dp
    String? pop_str_require_support
    String? num_records
    Boolean? die_on_warning
    Boolean? verbose
    String tool
    String for
    String filtering
    String and
    String qc
    String of
    String str
    String genotypes
  }
  command <<<
    dumpSTR \
      ~{tool} \
      ~{for} \
      ~{filtering} \
      ~{and} \
      ~{qc} \
      ~{of} \
      ~{str} \
      ~{genotypes} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(vcf_type) then ("--vcftype " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(min_locus_call_rate) then ("--min-locus-callrate " +  '"' + min_locus_call_rate + '"') else ""} \
      ~{if defined(min_locus_h_wep) then ("--min-locus-hwep " +  '"' + min_locus_h_wep + '"') else ""} \
      ~{if defined(min_locus_het) then ("--min-locus-het " +  '"' + min_locus_het + '"') else ""} \
      ~{if defined(max_locus_het) then ("--max-locus-het " +  '"' + max_locus_het + '"') else ""} \
      ~{true="--use-length" false="" use_length} \
      ~{if defined(filter_regions) then ("--filter-regions " +  '"' + filter_regions + '"') else ""} \
      ~{if defined(filter_regions_names) then ("--filter-regions-names " +  '"' + filter_regions_names + '"') else ""} \
      ~{true="--filter-hrun" false="" filter_h_run} \
      ~{true="--drop-filtered" false="" drop_filtered} \
      ~{if defined(hip_str_max_call_flank_in_del) then ("--hipstr-max-call-flank-indel " +  '"' + hip_str_max_call_flank_in_del + '"') else ""} \
      ~{if defined(hip_str_max_call_stutter) then ("--hipstr-max-call-stutter " +  '"' + hip_str_max_call_stutter + '"') else ""} \
      ~{if defined(hip_str_min_supp_reads) then ("--hipstr-min-supp-reads " +  '"' + hip_str_min_supp_reads + '"') else ""} \
      ~{if defined(hip_str_min_call_dp) then ("--hipstr-min-call-DP " +  '"' + hip_str_min_call_dp + '"') else ""} \
      ~{if defined(hip_str_max_call_dp) then ("--hipstr-max-call-DP " +  '"' + hip_str_max_call_dp + '"') else ""} \
      ~{if defined(hip_str_min_call_q) then ("--hipstr-min-call-Q " +  '"' + hip_str_min_call_q + '"') else ""} \
      ~{if defined(gang_str_min_call_dp) then ("--gangstr-min-call-DP " +  '"' + gang_str_min_call_dp + '"') else ""} \
      ~{if defined(gang_str_max_call_dp) then ("--gangstr-max-call-DP " +  '"' + gang_str_max_call_dp + '"') else ""} \
      ~{if defined(gang_str_min_call_q) then ("--gangstr-min-call-Q " +  '"' + gang_str_min_call_q + '"') else ""} \
      ~{if defined(gang_str_expansion_prob_het) then ("--gangstr-expansion-prob-het " +  '"' + gang_str_expansion_prob_het + '"') else ""} \
      ~{if defined(gang_str_expansion_prob_hom) then ("--gangstr-expansion-prob-hom " +  '"' + gang_str_expansion_prob_hom + '"') else ""} \
      ~{if defined(gang_str_expansion_prob_total) then ("--gangstr-expansion-prob-total " +  '"' + gang_str_expansion_prob_total + '"') else ""} \
      ~{true="--gangstr-filter-span-only" false="" gang_str_filter_span_only} \
      ~{true="--gangstr-filter-spanbound-only" false="" gang_str_filter_span_bound_only} \
      ~{true="--gangstr-filter-badCI" false="" gang_str_filter_bad_ci} \
      ~{if defined(gang_str_require_support) then ("--gangstr-require-support " +  '"' + gang_str_require_support + '"') else ""} \
      ~{if defined(gang_str_read_len) then ("--gangstr-readlen " +  '"' + gang_str_read_len + '"') else ""} \
      ~{if defined(ad_vntr_min_call_dp) then ("--advntr-min-call-DP " +  '"' + ad_vntr_min_call_dp + '"') else ""} \
      ~{if defined(ad_vntr_max_call_dp) then ("--advntr-max-call-DP " +  '"' + ad_vntr_max_call_dp + '"') else ""} \
      ~{if defined(ad_vntr_min_spanning) then ("--advntr-min-spanning " +  '"' + ad_vntr_min_spanning + '"') else ""} \
      ~{if defined(ad_vntr_min_flanking) then ("--advntr-min-flanking " +  '"' + ad_vntr_min_flanking + '"') else ""} \
      ~{if defined(ad_vntr_min_ml) then ("--advntr-min-ML " +  '"' + ad_vntr_min_ml + '"') else ""} \
      ~{if defined(eh_min_adfl) then ("--eh-min-ADFL " +  '"' + eh_min_adfl + '"') else ""} \
      ~{if defined(eh_min_a_dir) then ("--eh-min-ADIR " +  '"' + eh_min_a_dir + '"') else ""} \
      ~{if defined(eh_min_adsp) then ("--eh-min-ADSP " +  '"' + eh_min_adsp + '"') else ""} \
      ~{if defined(eh_min_call_lc) then ("--eh-min-call-LC " +  '"' + eh_min_call_lc + '"') else ""} \
      ~{if defined(eh_max_call_lc) then ("--eh-max-call-LC " +  '"' + eh_max_call_lc + '"') else ""} \
      ~{if defined(pop_str_min_call_dp) then ("--popstr-min-call-DP " +  '"' + pop_str_min_call_dp + '"') else ""} \
      ~{if defined(pop_str_max_call_dp) then ("--popstr-max-call-DP " +  '"' + pop_str_max_call_dp + '"') else ""} \
      ~{if defined(pop_str_require_support) then ("--popstr-require-support " +  '"' + pop_str_require_support + '"') else ""} \
      ~{if defined(num_records) then ("--num-records " +  '"' + num_records + '"') else ""} \
      ~{true="--die-on-warning" false="" die_on_warning} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    vcf: "Input STR VCF file"
    out: "Prefix for output files"
    vcf_type: "Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']"
    min_locus_call_rate: "Minimum locus call rate"
    min_locus_h_wep: "Filter loci failing HWE at this p-value threshold"
    min_locus_het: "Minimum locus heterozygosity"
    max_locus_het: "Maximum locus heterozygosity"
    use_length: "Calculate per-locus stats (het, HWE) collapsing alleles by length"
    filter_regions: "Comma-separated list of BED files of regions to filter. Must be bgzipped and tabix indexed"
    filter_regions_names: "Comma-separated list of filter names for each BED filter file"
    filter_h_run: "Filter STRs with long homopolymer runs."
    drop_filtered: "Drop filtered records from output"
    hip_str_max_call_flank_in_del: "Maximum call flank indel rate"
    hip_str_max_call_stutter: "Maximum call stutter rate"
    hip_str_min_supp_reads: "Minimum supporting reads for each allele"
    hip_str_min_call_dp: "Minimum call coverage"
    hip_str_max_call_dp: "Maximum call coverage"
    hip_str_min_call_q: "Minimum call quality score"
    gang_str_min_call_dp: "Minimum call coverage"
    gang_str_max_call_dp: "Maximum call coverage"
    gang_str_min_call_q: "Minimum call quality score"
    gang_str_expansion_prob_het: "Expansion prob-value threshold. Filters calls with probability of heterozygous expansion less than this"
    gang_str_expansion_prob_hom: "Expansion prob-value threshold. Filters calls with probability of homozygous expansion less than this"
    gang_str_expansion_prob_total: "Expansion prob-value threshold. Filters calls with probability of total expansion less than this"
    gang_str_filter_span_only: "Filter out all calls that only have spanning read support"
    gang_str_filter_span_bound_only: "Filter out all reads except spanning and bounding"
    gang_str_filter_bad_ci: "Filter regions where the ML estimate is not in the CI"
    gang_str_require_support: "Require each allele call to have at least n supporting reads"
    gang_str_read_len: "Read length used (bp). Required if using --require- support"
    ad_vntr_min_call_dp: "Minimum call coverage"
    ad_vntr_max_call_dp: "Maximum call coverage"
    ad_vntr_min_spanning: "Minimum spanning read count (SR field)"
    ad_vntr_min_flanking: "Minimum flanking read count (FR field)"
    ad_vntr_min_ml: "Minimum value of maximum likelihood (ML field)"
    eh_min_adfl: "Minimum number of flanking reads consistent with the allele"
    eh_min_a_dir: "Minimum number of in-repeat reads consistent with the allele"
    eh_min_adsp: "Minimum number of spanning reads consistent with the allele"
    eh_min_call_lc: "Minimum call coverage"
    eh_max_call_lc: "Maximum call coverage"
    pop_str_min_call_dp: "Minimum call coverage"
    pop_str_max_call_dp: "Maximum call coverage"
    pop_str_require_support: "Require each allele call to have at least n supporting reads"
    num_records: "Only process this many records"
    die_on_warning: "Quit if a record can't be parsed"
    verbose: "Print out extra info"
    tool: ""
    for: ""
    filtering: ""
    and: ""
    qc: ""
    of: ""
    str: ""
    genotypes: ""
  }
}