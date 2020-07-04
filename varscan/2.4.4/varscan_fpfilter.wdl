version 1.0

task VarscanFpfilter {
  input {
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
    File? var_28
    String? read_count
    File? var_30
  }
  command <<<
    varscan fpfilter \
      ~{java} \
      ~{fp_filter} \
      ~{variant} \
      ~{var_28} \
      ~{read_count} \
      ~{var_30} \
      ~{true="--min-var-count" false="" min_var_count} \
      ~{true="--min-var-count-lc" false="" min_var_count_lc} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--max-somatic-p" false="" max_somatic_p} \
      ~{true="--max-somatic-p-depth" false="" max_somatic_p_depth} \
      ~{true="--min-ref-readpos" false="" min_ref_read_pos} \
      ~{true="--min-var-readpos" false="" min_var_read_pos} \
      ~{true="--min-ref-dist3" false="" min_ref_dist_three} \
      ~{true="--min-var-dist3" false="" min_var_dist_three} \
      ~{true="--min-strandedness" false="" min_stranded_ness} \
      ~{true="--min-strand-reads" false="" min_strand_reads} \
      ~{true="--min-ref-basequal" false="" min_ref_base_qual} \
      ~{true="--min-var-basequal" false="" min_var_base_qual} \
      ~{true="--max-basequal-diff" false="" max_base_qual_diff} \
      ~{true="--min-ref-avgrl" false="" min_ref_avg_rl} \
      ~{true="--min-var-avgrl" false="" min_var_avg_rl} \
      ~{true="--max-rl-diff" false="" max_rl_diff} \
      ~{true="--max-ref-mmqs" false="" max_ref_mm_qs} \
      ~{true="--max-var-mmqs" false="" max_var_mm_qs} \
      ~{true="--min-mmqs-diff" false="" min_mm_qs_diff} \
      ~{true="--max-mmqs-diff" false="" max_mm_qs_diff} \
      ~{true="--min-ref-mapqual" false="" min_ref_map_qual} \
      ~{true="--min-var-mapqual" false="" min_var_map_qual} \
      ~{true="--max-mapqual-diff" false="" max_map_qual_diff} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
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
    var_28: ""
    read_count: ""
    var_30: ""
  }
}