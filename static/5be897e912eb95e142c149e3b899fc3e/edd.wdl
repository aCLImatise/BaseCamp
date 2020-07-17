version 1.0

task Edd {
  input {
    String? gap_penalty
    String? config_file
    Boolean? write_log_ratios
    Boolean? write_bin_scores
    String? bin_size
    String? n
    String? p
    String? fdr
  }
  command <<<
    edd \
      ~{if defined(gap_penalty) then ("--gap-penalty " +  '"' + gap_penalty + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{true="--write-log-ratios" false="" write_log_ratios} \
      ~{true="--write-bin-scores" false="" write_bin_scores} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""}
  >>>
  parameter_meta {
    gap_penalty: "Leave unspecificed for auto-estimation. Adjusts how sensitive EDD is to heterogeneity within domains. Depends on Signal/Noise ratio of source files and on the interests of the researcher. A \"low\" value favors large enriched domains with more heterogeneity. A \"high\" value favors smaller enriched domains devoid of heterogeneity."
    config_file: "Path to user specified EDD configuration file. See EDD manual section about configuration for more information."
    write_log_ratios: "Write log ratios to file."
    write_bin_scores: "Write bin scores to file."
    bin_size: ""
    n: ""
    p: ""
    fdr: ""
  }
}