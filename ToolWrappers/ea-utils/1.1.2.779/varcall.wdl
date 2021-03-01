version 1.0

task Varcall {
  input {
    Boolean? calculate_statistics
    Boolean? version_calculate_variants
    Boolean? reference_fasta_required
    Boolean? min_locii_depth
    Boolean? min_allele_depth
    Boolean? min_allele_pct
    Boolean? min_qual
    Boolean? min_mapping_quality
    Boolean? min_pct_balance
    Float? max_duplicate_read
    Float? minimum_diversity_cv
    Float? minimum_agreement_cv
    Boolean? zero_filters_set
    Boolean? running_bam_turn
    Boolean? homopolymer_repeat_indel
    Float? alpha_filter_use
    Float? global_minimum_error
    Int? number_locii_mil
    String? pos_output_pos
    File? read_statistics_params
    File? calculate_intarget_stats
    String? output_prefix_works
    File? list_output_vcf
    Boolean? pcr_an_not
    Boolean? stranded
    Boolean? diversity
    Boolean? agreement
    Boolean? no_indels
    String prefix_dot_var
    String prefix_do_tea_v
    String prefix_dot_cse
    String prefix_dot_vcf
    String prefix_dot_var_sum
    String prefix_dot_tgt_dot_var
    String prefix_dot_tgt_dot_cse
    String prefix_dot_tgt_dot_var_sum
    String prefix_dot_stats
    String prefix_dot_noise
    String prefix_do_tx_noise
  }
  command <<<
    varcall \
      ~{prefix_dot_var} \
      ~{prefix_do_tea_v} \
      ~{prefix_dot_cse} \
      ~{prefix_dot_vcf} \
      ~{prefix_dot_var_sum} \
      ~{prefix_dot_tgt_dot_var} \
      ~{prefix_dot_tgt_dot_cse} \
      ~{prefix_dot_tgt_dot_var_sum} \
      ~{prefix_dot_stats} \
      ~{prefix_dot_noise} \
      ~{prefix_do_tx_noise} \
      ~{if (calculate_statistics) then "-s" else ""} \
      ~{if (version_calculate_variants) then "-v" else ""} \
      ~{if (reference_fasta_required) then "-f" else ""} \
      ~{if (min_locii_depth) then "-m" else ""} \
      ~{if (min_allele_depth) then "-a" else ""} \
      ~{if (min_allele_pct) then "-p" else ""} \
      ~{if (min_qual) then "-q" else ""} \
      ~{if (min_mapping_quality) then "-Q" else ""} \
      ~{if (min_pct_balance) then "-b" else ""} \
      ~{if defined(max_duplicate_read) then ("-D " +  '"' + max_duplicate_read + '"') else ""} \
      ~{if defined(minimum_diversity_cv) then ("-d " +  '"' + minimum_diversity_cv + '"') else ""} \
      ~{if defined(minimum_agreement_cv) then ("-G " +  '"' + minimum_agreement_cv + '"') else ""} \
      ~{if (zero_filters_set) then "-0" else ""} \
      ~{if (running_bam_turn) then "-B" else ""} \
      ~{if (homopolymer_repeat_indel) then "-R" else ""} \
      ~{if defined(alpha_filter_use) then ("-e " +  '"' + alpha_filter_use + '"') else ""} \
      ~{if defined(global_minimum_error) then ("-g " +  '"' + global_minimum_error + '"') else ""} \
      ~{if defined(number_locii_mil) then ("-l " +  '"' + number_locii_mil + '"') else ""} \
      ~{if defined(pos_output_pos) then ("-x " +  '"' + pos_output_pos + '"') else ""} \
      ~{if defined(read_statistics_params) then ("-S " +  '"' + read_statistics_params + '"') else ""} \
      ~{if defined(calculate_intarget_stats) then ("-A " +  '"' + calculate_intarget_stats + '"') else ""} \
      ~{if defined(output_prefix_works) then ("-o " +  '"' + output_prefix_works + '"') else ""} \
      ~{if defined(list_output_vcf) then ("-F " +  '"' + list_output_vcf + '"') else ""} \
      ~{if (pcr_an_not) then "--pcr-annot" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (diversity) then "--diversity" else ""} \
      ~{if (agreement) then "--agreement" else ""} \
      ~{if (no_indels) then "--no-indels" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    calculate_statistics: "Calculate statistics"
    version_calculate_variants: "|version  Calculate variants bases on supplied parameters (see -S)"
    reference_fasta_required: "Reference fasta (required if using bams, ignored otherwise)"
    min_locii_depth: "Min locii depth (1)"
    min_allele_depth: "Min allele depth (2)"
    min_allele_pct: "Min allele pct by quality (0)"
    min_qual: "Min qual (3)"
    min_mapping_quality: "Min mapping quality (0)"
    min_pct_balance: "Min pct balance (strand/total) (0)"
    max_duplicate_read: "Max duplicate read fraction (depth/length per position) (1)"
    minimum_diversity_cv: "Minimum diversity (CV from optimal depth) (0.25)"
    minimum_agreement_cv: "Minimum agreement (Weighted CV of positional variation) (0.25)"
    zero_filters_set: "Zero out all filters, set e-value filter to 1, report everything"
    running_bam_turn: "If running from a BAM, turn off BAQ correction (false)"
    homopolymer_repeat_indel: "Homopolymer repeat indel filtering (8)"
    alpha_filter_use: "Alpha filter to use, requires -l or -S (.05)"
    global_minimum_error: "Global minimum error rate (default: assume phred is ok)"
    number_locii_mil: "Number of locii in total pileup used for bonferroni (1 mil)"
    pos_output_pos: ":POS  Output this pos only, then quit"
    read_statistics_params: "Read in statistics and params from a previous run with -s (do this!)"
    calculate_intarget_stats: "Calculate in-target stats using the annotation file (requires -o)"
    output_prefix_works: "Output prefix (works with -s or -v)"
    list_output_vcf: "List of file types to output (var, varsum, eav, vcf)"
    pcr_an_not: "BED      Only include reads adhering to the expected amplicons"
    stranded: "TYPE     Can be FR (the default), FF, FR.  Used with pcr-annot"
    diversity: "|d FLOAT    Alias for -d"
    agreement: "|G FLOAT    Alias for -G"
    no_indels: "Ignore all indels"
    prefix_dot_var: "Variant calls in tab delimited 'varcall' format"
    prefix_do_tea_v: "Variant calls in tab delimited 'ea-var' format"
    prefix_dot_cse: "Variant calls in tab delimited 'varprowl' format"
    prefix_dot_vcf: "Variant calls, in vcf format"
    prefix_dot_var_sum: "Summary of variant calls"
    prefix_dot_tgt_dot_var: "On-target version of .var"
    prefix_dot_tgt_dot_cse: "On-target version of .cse"
    prefix_dot_tgt_dot_var_sum: "On-target version of .varsum"
    prefix_dot_stats: "Stats output"
    prefix_dot_noise: "Non-reference, non-homozygous allele summary"
    prefix_do_tx_noise: "Like noise, but with context-specific rates"
  }
  output {
    File out_stdout = stdout()
    File out_list_output_vcf = "${in_list_output_vcf}"
  }
}