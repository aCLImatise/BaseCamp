version 1.0

task VarscanFpfilter {
  input {
    File? output_file
    File? filtered_file
    Boolean? dream_three_settings
    File? keep_failures
    Boolean? min_var_count
    Boolean? min_var_count_lc
    Boolean? min_var_freq
    Boolean? max_somatic_p
    Boolean? max_somatic_p_depth
    Boolean? min_ref_read_pos
    Boolean? min_var_read_pos
    Boolean? min_ref_dist_three
    Boolean? min_var_dist_three
    Boolean? min_stranded_ness
    Boolean? min_strand_reads
    Boolean? min_ref_base_qual
    Boolean? min_var_base_qual
    Boolean? max_base_qual_diff
    Boolean? min_ref_avg_rl
    Boolean? min_var_avg_rl
    Boolean? max_rl_diff
    Boolean? max_ref_mm_qs
    Boolean? max_var_mm_qs
    Boolean? min_mm_qs_diff
    Boolean? max_mm_qs_diff
    Boolean? min_ref_map_qual
    Boolean? min_var_map_qual
    Boolean? max_map_qual_diff
    String? jar
    String java
    String fp_filter
    String? variant
    File? var_file
    String? read_count
  }
  command <<<
    varscan fpfilter \
      ~{java} \
      ~{fp_filter} \
      ~{variant} \
      ~{var_file} \
      ~{read_count} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (filtered_file) then "--filtered-file" else ""} \
      ~{if (dream_three_settings) then "--dream3-settings" else ""} \
      ~{if (keep_failures) then "--keep-failures" else ""} \
      ~{if (min_var_count) then "--min-var-count" else ""} \
      ~{if (min_var_count_lc) then "--min-var-count-lc" else ""} \
      ~{if (min_var_freq) then "--min-var-freq" else ""} \
      ~{if (max_somatic_p) then "--max-somatic-p" else ""} \
      ~{if (max_somatic_p_depth) then "--max-somatic-p-depth" else ""} \
      ~{if (min_ref_read_pos) then "--min-ref-readpos" else ""} \
      ~{if (min_var_read_pos) then "--min-var-readpos" else ""} \
      ~{if (min_ref_dist_three) then "--min-ref-dist3" else ""} \
      ~{if (min_var_dist_three) then "--min-var-dist3" else ""} \
      ~{if (min_stranded_ness) then "--min-strandedness" else ""} \
      ~{if (min_strand_reads) then "--min-strand-reads" else ""} \
      ~{if (min_ref_base_qual) then "--min-ref-basequal" else ""} \
      ~{if (min_var_base_qual) then "--min-var-basequal" else ""} \
      ~{if (max_base_qual_diff) then "--max-basequal-diff" else ""} \
      ~{if (min_ref_avg_rl) then "--min-ref-avgrl" else ""} \
      ~{if (min_var_avg_rl) then "--min-var-avgrl" else ""} \
      ~{if (max_rl_diff) then "--max-rl-diff" else ""} \
      ~{if (max_ref_mm_qs) then "--max-ref-mmqs" else ""} \
      ~{if (max_var_mm_qs) then "--max-var-mmqs" else ""} \
      ~{if (min_mm_qs_diff) then "--min-mmqs-diff" else ""} \
      ~{if (max_mm_qs_diff) then "--max-mmqs-diff" else ""} \
      ~{if (min_ref_map_qual) then "--min-ref-mapqual" else ""} \
      ~{if (min_var_map_qual) then "--min-var-mapqual" else ""} \
      ~{if (max_map_qual_diff) then "--max-mapqual-diff" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "Optional output file for filter-pass variants"
    filtered_file: "Optional output file for filter-fail variants"
    dream_three_settings: "If set to 1, optimizes filter parameters based on TCGA-ICGC DREAM-3 SNV Challenge results"
    keep_failures: "If set to 1, includes failures in the output file"
    min_var_count: "Minimum number of variant-supporting reads [4]"
    min_var_count_lc: "Minimum number of variant-supporting reads when depth below somaticPdepth [2]"
    min_var_freq: "Minimum variant allele frequency [0.05]"
    max_somatic_p: "Maximum somatic p-value [1.0]"
    max_somatic_p_depth: "Depth required to test max somatic p-value [10]"
    min_ref_read_pos: "Minimum average read position of ref-supporting reads [0.1]"
    min_var_read_pos: "Minimum average read position of var-supporting reads [0.1]"
    min_ref_dist_three: "Minimum average distance to effective 3' end (ref) [0.1]"
    min_var_dist_three: "Minimum average distance to effective 3' end (var) [0.1]"
    min_stranded_ness: "Minimum fraction of variant reads from each strand [0.01]"
    min_strand_reads: "Minimum allele depth required to perform the strand tests [5]"
    min_ref_base_qual: "Minimum average base quality for ref allele [15]"
    min_var_base_qual: "Minimum average base quality for var allele [15]"
    max_base_qual_diff: "Maximum average base quality diff (ref - var) [50]"
    min_ref_avg_rl: "Minimum average trimmed read length for ref allele [90]"
    min_var_avg_rl: "Minimum average trimmed read length for var allele [90]"
    max_rl_diff: "Maximum average relative read length difference (ref - var) [0.25]"
    max_ref_mm_qs: "Maximum mismatch quality sum of reference-supporting reads [100]"
    max_var_mm_qs: "Maximum mismatch quality sum of variant-supporting reads [100]"
    min_mm_qs_diff: "Minimum average mismatch quality sum (var - ref) [0]"
    max_mm_qs_diff: "Maximum average mismatch quality sum (var - ref) [50]"
    min_ref_map_qual: "Minimum average mapping quality for ref allele [15]"
    min_var_map_qual: "Minimum average mapping quality for var allele [15]"
    max_map_qual_diff: "Maximum average mapping quality (ref - var) [50]"
    jar: ""
    java: ""
    fp_filter: ""
    variant: ""
    var_file: ""
    read_count: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_filtered_file = "${in_filtered_file}"
    File out_keep_failures = "${in_keep_failures}"
  }
}